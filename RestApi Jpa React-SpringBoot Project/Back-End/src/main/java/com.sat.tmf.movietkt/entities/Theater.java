package com.sat.tmf.movietkt.entities;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "theater")
public class Theater {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String name;
    
    private String location;
    
    private Integer capacity;
    
    @Column(name = "screen_type")
    private String screenType;
    
    // Constructors
    public Theater() {}
    
    public Theater(String name, String location, Integer capacity, String screenType) {
        this.name = name;
        this.location = location;
        this.capacity = capacity;
        this.screenType = screenType;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getLocation() {
        return location;
    }
    
    public void setLocation(String location) {
        this.location = location;
    }
    
    public Integer getCapacity() {
        return capacity;
    }
    
    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
    
    public String getScreenType() {
        return screenType;
    }
    
    public void setScreenType(String screenType) {
        this.screenType = screenType;
    }
}