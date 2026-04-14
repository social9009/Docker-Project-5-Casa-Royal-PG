# 🏠 Casa Royale — Luxury PG Marketing Website | Docker Multi-Stage Build

<div align="center">

![Docker](https://img.shields.io/badge/Docker_Multi--Stage-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Java](https://img.shields.io/badge/Java_17-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot_3.1-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
![Maven](https://img.shields.io/badge/Maven_3.9-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white)
![Alpine](https://img.shields.io/badge/Alpine_Linux-0D597F?style=for-the-badge&logo=alpinelinux&logoColor=white)

<br/>

**A luxury marketing website for Casa Royale — India's First Luxury PG & Co-Living Space in Hinjewadi, Pune.**
**Built with Java Spring Boot and containerized using Docker Multi-Stage Build.**

<br/>

*Designed & Developed by **Akshay Sawant** — AWS DevOps Engineer | Hinjewadi, Pune*

---

### 🌐 Run Locally → Open `http://localhost:8080`

| Contact | Details |
|---------|---------|
| 📞 Phone | +91 86240 86240 |
| 📸 Instagram | [@casaroyale_pg](https://www.instagram.com/casaroyale_pg/) |
| 📍 Location | Hinjewadi & Marunji, Pune |
| 💬 WhatsApp | [Chat Now](https://wa.me/918624086240) |

</div>

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [About Casa Royale](#-about-casa-royale)
- [Website Sections](#-website-sections)
- [Project Structure](#-project-structure)
- [Tech Stack](#-tech-stack)
- [Multi-Stage Dockerfile Explained](#-multi-stage-dockerfile-explained)
- [Step-by-Step Commands](#-step-by-step-commands)
- [Docker Size Comparison](#-docker-size-comparison)
- [Clone and Run](#-clone-and-run)
- [Push to GitHub](#-push-to-github)
- [Key Learnings](#-key-learnings)

---

## 🎯 Project Overview

This is **Docker Project 5** in Akshay Sawant's Docker learning series.

**What this project demonstrates:**

1. **Docker Multi-Stage Build** with Java Spring Boot — ships only the compiled JAR in minimal Alpine (no Maven in production)
2. **Full luxury marketing website** — served via Spring Boot's static file hosting
3. **Real business content** — all photos, video tour, contact details, WhatsApp/Instagram links for Casa Royale PG
4. **Production-ready Docker image** — run with a single command

---

## 🏠 About Casa Royale

> **India's First Luxury PG — OXYGEN PLUS**

Casa Royale is a premium co-living and PG accommodation located in **Hinjewadi IT Hub, Pune** — the heart of Pune's technology corridor. It's designed specifically for **students and working professionals** who want more than just a place to sleep.

```
✅ 33+ Premium Amenities
✅ 21-Day Non-Repeating Meal Plan (Mama's Stove Restaurant)
✅ 7-Step Hygiene Routine
✅ 5-Tier Safety System
✅ 1,200+ Indoor Plants
✅ Private Balconies
✅ Billiards + Foosball Tables
✅ Co-Working Spaces
✅ Marble Corridors
✅ Biometric Entry + CCTV
```

**Location:**
```
Opposite Prathamshree Vatika,
Marunji Road, Hinjewadi Phase 1,
Pune – 411057, Maharashtra
```

**Contact:**
```
📞 +91 86240 86240
📸 Instagram: @casaroyale_pg
💬 WhatsApp: wa.me/918624086240
```

---

## 🌐 Website Sections

The marketing website contains the following fully designed sections:

| Section | Description |
|---------|-------------|
| 🎬 **Hero** | Full-screen video tour with animated stats counter and booking CTA |
| 🏠 **About** | India's First Luxury PG story with building photo and feature list |
| ⭐ **Amenities** | All 33+ amenities in an animated hover grid (icons + names) |
| 📸 **Gallery** | 20 real photos with filter tabs: Rooms, Dining, Common, Exterior |
| 🎥 **Video Tour** | Compiled slideshow video from all property photos |
| 🍽️ **Meals** | Mama's Stove section with 21-day meal plan details |
| 🔒 **Safety** | 5-Tier Safety System with CCTV, biometric, guards |
| 🛏️ **Rooms** | Three room types with photos and features |
| 🪴 **Plants** | 1,200+ indoor plants with giant animated number |
| ⭐ **Testimonials** | Auto-scrolling resident review cards |
| 📞 **Contact** | Phone, WhatsApp, Instagram, address, map, enquiry form |
| 🦶 **Footer** | Full footer with links and brand info |

### Design Features:
```
🌑 Deep luxury dark green/gold theme
✨ 80 animated star particles in background
⚡ Subtle lightning flash effect
🖱️ Custom golden cursor with ring
🎨 Gold + Forest Green color palette
📱 Fully responsive (mobile, tablet, desktop)
🔄 Scroll-reveal animations on all sections
💬 WhatsApp enquiry form (pre-filled message)
📸 Floating Instagram + WhatsApp buttons
🎞️ Auto-play video hero with fallback image
```

---

## 📁 Project Structure

```
casa-royale/
│
├── 📄 README.md                               ← This documentation
├── 📄 pom.xml                                 ← Maven (outputs casa-royale-1.0.0.jar)
├── 📄 dockerfile                              ← Multi-Stage (Apple M1/M2/M3 ✅)
├── 📄 dockerfile.intel                        ← Multi-Stage (Intel/AMD64/Linux ✅)
├── 📄 .gitignore
│
└── 📁 src/
    └── 📁 main/
        ├── 📁 java/com/akshay/casaroyale/
        │   └── 📄 CasaRoyaleApp.java          ← Spring Boot main class + /health API
        └── 📁 resources/
            └── 📁 static/
                ├── 📄 index.html              ← Full luxury marketing website
                ├── 📁 images/                 ← All 20 property photos
                │   ├── building-night.jpg
                │   ├── building-day.jpg
                │   ├── room1.jpg
                │   ├── lounge.jpg
                │   ├── dining-full.jpg
                │   ├── restaurant-door.jpg
                │   ├── pool-table.jpg
                │   ├── billiards.jpg
                │   ├── foosball.jpg
                │   ├── staircase.jpg
                │   ├── corridor.jpg
                │   ├── buffet.jpg
                │   ├── food1.jpg
                │   ├── food2.jpg
                │   ├── dining1.jpg
                │   ├── dining2.jpg
                │   ├── dining3.jpg
                │   ├── common-area.jpg
                │   ├── building-ad.jpg
                │   └── brand.png
                └── 📁 video/
                    └── 🎬 casa-royale-tour.mp4 ← Auto-generated slideshow video
```

---

## 🛠️ Tech Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| **Backend** | Spring Boot 3.1, Java 17 | Serves website, handles /health endpoint |
| **Frontend** | HTML5, CSS3, Vanilla JS | Luxury marketing website UI |
| **Build** | Maven 3.9 | Compiles and packages to JAR |
| **Container (Build)** | `maven:3.9.3-amazoncorretto-17` | Full Maven + JDK for compilation only |
| **Container (Run)** | `amazoncorretto:17-alpine` | Minimal Alpine + JRE for production |
| **Video** | FFmpeg | Combines property photos into tour video |
| **Fonts** | Google Fonts (Cormorant Garamond, Montserrat, Playfair Display) | Luxury typography |
| **Icons** | Font Awesome 6.5 | UI icons throughout |

---

## 🐳 Multi-Stage Dockerfile Explained

```dockerfile
# ── STAGE 1: BUILD ──────────────────────────────────────────────
# Full Maven image — compiles the Spring Boot app into a JAR
# This ~600MB image is NEVER shipped to production
FROM maven:3.9.3-amazoncorretto-17 AS builder
WORKDIR /app

# Smart caching: pom.xml copied FIRST
# If only Java code changes, Maven deps are NOT re-downloaded
COPY pom.xml .
RUN mvn dependency:go-offline -B      ← pre-download all dependencies

COPY src ./src
RUN mvn clean package -DskipTests     ← compile → produces JAR in target/

# ── STAGE 2: RUN ───────────────────────────────────────────────
# Only minimal Alpine JRE + your compiled JAR
# Everything else from Stage 1 is automatically discarded
FROM amazoncorretto:17-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar   ← only the JAR crosses over
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
```

### Why This Matters:

```
WITHOUT Multi-Stage:
  Image = Maven (~400MB) + JDK (~300MB) + source code + JAR + static files
  Total: 700MB+ — unnecessary build tools ship to production ❌

WITH Multi-Stage:
  Stage 1 builds everything → Stage 2 gets only the JAR
  Image = Alpine JRE (~200MB) + JAR (~15MB) + static files
  Total: ~320MB — lean, secure, production-ready ✅
```

---

## 💻 Step-by-Step Commands

### Step 1 — Create Project Structure
```bash
mkdir casa-royale
cd casa-royale
mkdir -p src/main/java/com/akshay/casaroyale
mkdir -p src/main/resources/static/images
mkdir -p src/main/resources/static/video
```

### Step 2 — Add All Files
```bash
# Place all files as shown in Project Structure above
ls src/main/resources/static/images/
# building-night.jpg  room1.jpg  lounge.jpg  dining-full.jpg ... (20 images)
ls src/main/resources/static/video/
# casa-royale-tour.mp4
```

### Step 3 — Build Docker Image (Apple M1/M2/M3)
```bash
docker build -t casa-royale -f dockerfile .
```

### Step 3 — Build Docker Image (Intel/Linux)
```bash
docker build -t casa-royale -f dockerfile.intel .
```

### Step 4 — Check Image Size
```bash
docker images casa-royale
```
```
IMAGE                  DISK USAGE    CONTENT SIZE
casa-royale:latest       ~320 MB       ~160 MB
```

### Step 5 — Run Container
```bash
docker run -d --name casa-royale-app -p 8080:8080 casa-royale
```

### Step 6 — Verify Running
```bash
docker ps
# CONTAINER ID   IMAGE          COMMAND               PORTS
# abc12345       casa-royale    "java -jar app.jar"   0.0.0.0:8080->8080/tcp
```

### Step 7 — Test
```bash
# Health check
curl http://localhost:8080/health
# → Casa Royale PG — Luxury Living is LIVE! 🏠✨

# Open website
open http://localhost:8080
```

### Step 8 — Clean Up
```bash
docker stop casa-royale-app
docker rm   casa-royale-app
```

---

## 📊 Docker Size Comparison

```
Build Approach     Base Images                        Final Size
─────────────────────────────────────────────────────────────────
Single-Stage  →   maven:3.9.3-amazoncorretto-17       ~700 MB  ❌
Multi-Stage   →   amazoncorretto:17-alpine             ~320 MB  ✅
─────────────────────────────────────────────────────────────────
              Savings: ~380 MB  (54% smaller)
```

---

## 📥 Clone and Run

```bash
# Clone
git clone https://github.com/social9009/casa-royale.git
cd casa-royale

# Build (Apple M1/M2/M3)
docker build -t casa-royale -f dockerfile .

# Build (Intel/Linux)
docker build -t casa-royale -f dockerfile.intel .

# Run
docker run -d --name casa-royale-app -p 8080:8080 casa-royale

# Open
open http://localhost:8080
```

---

## 🚀 Push to GitHub

```bash
cd casa-royale
git init
git add .
git commit -m "feat: casa royale luxury PG marketing website - Spring Boot + Docker multi-stage"
git remote add origin https://github.com/social9009/casa-royale.git
git branch -M main
git push -u origin main
```

---

## 💡 Key Learnings

### ✅ Docker Multi-Stage for Java
```
Stage 1: Maven compiles .java → .jar  (~15MB output)
Stage 2: Alpine JRE runs the .jar     (~200MB base)
= 320MB final vs 700MB single-stage  (54% smaller)
```

### ✅ Spring Boot Static File Serving
```
Place HTML/CSS/JS/images in:
  src/main/resources/static/

Spring Boot auto-serves them at root URL:
  http://localhost:8080/           → index.html
  http://localhost:8080/images/x.jpg → images/x.jpg
  http://localhost:8080/video/x.mp4  → video/x.mp4

No extra configuration needed! Spring Boot does it automatically.
```

### ✅ Smart Docker Layer Caching
```dockerfile
# Copy pom.xml FIRST → deps cached if only code changes
COPY pom.xml .
RUN mvn dependency:go-offline    ← CACHED on rebuild
COPY src ./src                   ← only this layer re-runs on code change
RUN mvn clean package
```

---

## 🔗 Related Docker Projects

[![Docker-4](https://img.shields.io/badge/Docker--4-Java_CinemaWorld-ED8B00?style=for-the-badge&logo=spring)](https://github.com/social9009/cinema-world)
[![Docker-3](https://img.shields.io/badge/Docker--3-Go_Multi--Stage-00ADD8?style=for-the-badge&logo=go)](https://github.com/social9009/Go-App)
[![Docker-2](https://img.shields.io/badge/Docker--2-Image_Types-2496ED?style=for-the-badge&logo=docker)](https://github.com/social9009/docker-image-types)
[![SonarQube](https://img.shields.io/badge/DevSecOps-SonarQube-4E9BCD?style=for-the-badge&logo=sonarqube)](https://github.com/social9009/SonarQube-Project)

---

## 🏠 Casa Royale Quick Info

```
Property Name : Casa Royale — OXYGEN PLUS
Type          : Luxury PG & Co-Living Space
Location      : Hinjewadi Phase 1 & Marunji, Pune
Address       : Opp. Prathamshree Vatika, Marunji Road, Pune 411057
Phone         : +91 86240 86240
WhatsApp      : wa.me/918624086240
Instagram     : @casaroyale_pg
Amenities     : 33+
Meal Plan     : 21-Day Non-Repeating (Mama's Stove)
Safety        : 5-Tier System
Plants        : 1,200+ Indoor Plants
Ideal For     : IT Professionals & Students in Hinjewadi
```

---

## 👨‍💻 Developer

**Akshay Sawant** — AWS DevOps Engineer | AWS Solutions Architect Associate

[![Email](https://img.shields.io/badge/Email-akshaysawant9009@gmail.com-D14836?style=flat-square&logo=gmail)](mailto:akshaysawant9009@gmail.com)
[![Phone](https://img.shields.io/badge/Phone-+91_9096505065-25D366?style=flat-square&logo=whatsapp)](tel:+919096505065)
[![GitHub](https://img.shields.io/badge/GitHub-social9009-181717?style=flat-square&logo=github)](https://github.com/social9009)
[![Location](https://img.shields.io/badge/Location-Hinjawadi_Pune-4285F4?style=flat-square&logo=googlemaps)](https://maps.google.com)

---

<div align="center">

⭐ **Star this repo if you found it useful!** ⭐

*Docker Series: Image Types → Python → Go Multi-Stage → Java CinemaWorld → **Java Casa Royale** (this)*

</div>
