package com.sat.tmf.movietkt.entities;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Date;


@Entity
@Table(name = "booking")
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "user_id")
    private Long userId;
    
    @Column(name = "movie_id")
    private Long movieId;
    
    @Column(name = "show_id")
    private Long showId;
    
    @Column(name = "number_of_tickets")
    private Integer numberOfTickets;
    
    @Column(name = "total_price")
    private Double totalPrice;
    
    @Column(name = "booking_date")
    private Date bookingDate;
    
    // Constructors
    public Booking() {}
    
    public Booking(Long userId, Long movieId, Long showId, Integer numberOfTickets, Double totalPrice, Date bookingDate) {
        this.userId = userId;
        this.movieId = movieId;
        this.showId = showId;
        this.numberOfTickets = numberOfTickets;
        this.totalPrice = totalPrice;
        this.bookingDate = bookingDate;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Long getUserId() {
        return userId;
    }
    
    public void setUserId(Long userId) {
        this.userId = userId;
    }
    
    public Long getMovieId() {
        return movieId;
    }
    
    public void setMovieId(Long movieId) {
        this.movieId = movieId;
    }
    
    public Long getShowId() {
        return showId;
    }
    
    public void setShowId(Long showId) {
        this.showId = showId;
    }
    
    public Integer getNumberOfTickets() {
        return numberOfTickets;
    }
    
    public void setNumberOfTickets(Integer numberOfTickets) {
        this.numberOfTickets = numberOfTickets;
    }
    
    public Double getTotalPrice() {
        return totalPrice;
    }
    
    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }
    
    public Date getBookingDate() {
        return bookingDate;
    }
    
    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }
}
