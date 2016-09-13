package com.kmowers.lab25;

import javax.validation.constraints.Size;
import javax.validation.constraints.Min;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;


 

public class User {
    @NotNull(message = "Please enter your name.")
    @Size(min = 1, max = 20, message = "Your name must be less than 20 characters.")
    private String name;
     
    
    @NotNull(message = "Please enter your age.")
    @Min(value = 1)
    @Max(value = 150)
    private int age;
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public int getAge() {
        return age;
    }
 
    public void setAge(int age) {
        this.age = age;
    }
}