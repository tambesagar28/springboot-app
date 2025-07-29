// File: src/main/java/com/example/demo/HelloController.java
package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    
    @GetMapping("/")
    public String home() {
        return "Hello from Spring Boot!";
    }

    @GetMapping("/health")
    public String health() {
        return "App is running!";
    }
}
