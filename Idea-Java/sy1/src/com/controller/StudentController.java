package com.controller;

import com.entity.Student;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class StudentController {
    @Bean
    public Student student(){
        return new Student();
    }
}
