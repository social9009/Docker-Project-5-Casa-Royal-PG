# ═══════════════════════════════════════════════════════════════
# Casa Royale — Multi-Stage Dockerfile
# For: Apple Silicon M1 / M2 / M3 (ARM64)
# ═══════════════════════════════════════════════════════════════

# ── STAGE 1: BUILD ──────────────────────────────────────────────
# Full Maven + Amazon Corretto (ARM64 compatible)
# Compiles Spring Boot app and packages the JAR
# This ~600MB image is NEVER shipped to production
# ────────────────────────────────────────────────────────────────
FROM maven:3.9.3-amazoncorretto-17 AS builder
WORKDIR /app

# Smart cache: copy pom.xml first so deps are cached separately
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Build the application JAR
COPY src ./src
RUN mvn clean package -DskipTests

# ── STAGE 2: RUN ───────────────────────────────────────────────
# Minimal Alpine + Amazon Corretto JRE only
# Only the compiled JAR + static assets are copied here
# Maven, source code, and build tools are discarded automatically
# ────────────────────────────────────────────────────────────────
FROM amazoncorretto:17-alpine
WORKDIR /app

# Copy ONLY the compiled JAR from Stage 1
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
