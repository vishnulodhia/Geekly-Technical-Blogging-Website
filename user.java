/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

import java.sql.Timestamp;

/**
 *
 * @author Dell
 */
public class user {
    private int id;
    private String name;
    private String email;
    private String password;
    private Timestamp datetime;
    private String profile;

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    public String getProfile() {
        return profile;
    }

    public user(int id, String name, String email, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        
    }

    public user(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public user() {
    }
    
//    getters and setter

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public Timestamp getDatetime() {
        return datetime;
    }

    
    
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setDatetime(Timestamp datetime) {
        this.datetime = datetime;
    }
    
    
}
