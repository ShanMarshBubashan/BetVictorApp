package com.example.betvictorapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;

@SpringBootApplication
@CrossOrigin("*")
public class BetVictorAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(BetVictorAppApplication.class, args);
    }

}
