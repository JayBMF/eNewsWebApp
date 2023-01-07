package com.example.enewswebapp.beans;

import java.time.LocalDateTime;

public class User {


    ///Thang
    private String username, password,name,email;
    private LocalDateTime dob;

    public User() {
    }

    public User(String username, String name,String password , String email, LocalDateTime dob) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.email = email;
        this.dob = dob;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDateTime getDob() {
        return dob;
    }

    public void setDob(LocalDateTime dob) {
        this.dob = dob;
    }
}
