package com.akshay.casaroyale;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class CasaRoyaleApp {

    public static void main(String[] args) {
        SpringApplication.run(CasaRoyaleApp.class, args);
    }

    @GetMapping("/health")
    public String health() {
        return "Casa Royale PG — Luxury Living is LIVE! 🏠✨";
    }

    @GetMapping("/info")
    public String info() {
        return "{\"name\":\"Casa Royale\",\"type\":\"Luxury PG & Co-Living\",\"location\":\"Hinjewadi & Marunji, Pune\",\"contact\":\"86240 86240\"}";
    }
}
