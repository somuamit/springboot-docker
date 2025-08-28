package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {
    @GetMapping("/greeting")
    public String greetConsumer() {
        return "Hello from a basic app.";
    }
	
	@GetMapping("/hello")
    public String helloConsumer() {
        return "Big Hello.";
    }
	@GetMapping("/")
    public String landind() {
        return "Done set up";
    }
}