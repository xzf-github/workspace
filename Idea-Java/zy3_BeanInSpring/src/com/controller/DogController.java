package com.controller;

import com.entity.Dog;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DogController {
    @Bean
    public Dog dog(){
        return new Dog();
    }
}
