package com.sat.tmf.movietkt.entities;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "shows")
public class Show {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "movie_id")
    private Long movieId;
    
    @Column(name = "theater_id")
    private Long theaterId;
    
    @Column(name = "show_time")
    private Date showTime;
    
    @Column(name = "available_seats")
    private Integer availableSeats;
    
    @Column(name = "price_per_ticket")
    private Double pricePerTicket;
    
    // Constructors
    public Show() {}
    
    public Show(Long movieId, Long theaterId, Date showTime, Integer availableSeats, Double pricePerTicket) {
        this.movieId = movieId;
        this.theaterId = theaterId;
        this.showTime = showTime;
        this.availableSeats = availableSeats;
        this.pricePerTicket = pricePerTicket;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Long getMovieId() {
        return movieId;
    }
    
    public void setMovieId(Long movieId) {
        this.movieId = movieId;
    }
    
    public Long getTheaterId() {
        return theaterId;
    }
    
    public void setTheaterId(Long theaterId) {
        this.theaterId = theaterId;
    }
    
    public Date getShowTime() {
        return showTime;
    }
    
    public void setShowTime(Date showTime) {
        this.showTime = showTime;
    }
    
    public Integer getAvailableSeats() {
        return availableSeats;
    }
    
    public void setAvailableSeats(Integer availableSeats) {
        this.availableSeats = availableSeats;
    }
    
    public Double getPricePerTicket() {
        return pricePerTicket;
    }
    
    public void setPricePerTicket(Double pricePerTicket) {
        this.pricePerTicket = pricePerTicket;
    }
}