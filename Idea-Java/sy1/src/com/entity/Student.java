package com.entity;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component(value = "myStudent")
@Scope("prototype")
public class Student {
    @Value("001")
    String sno;
    @Value("张三")
    String name;
    @Value("计算机科学与技术")
    String major;

    public Student() {
    }

    public Student(String sno, String name, String major) {
        this.sno = sno;
        this.name = name;
        this.major = major;
    }
    public void addStudent(){
        System.out.println("已添加新学生\n"+"学号:"+sno+"\n专业:"+major+"\n姓名:"+name);
    }
}
