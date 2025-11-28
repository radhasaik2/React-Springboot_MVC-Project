package com.sat.tmf.movietkt.entities;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "movie")
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String title;
    
    private String genre;
    
    private Integer duration; // in minutes
    
    @Column(length = 1000)
    private String description;
    
    @Column(name = "release_date")
    private Date releaseDate;
    
    private String language;
    
    private String director;
    
    private String cast;
    
    @Column(name = "poster_url")
    private String posterUrl;
    
    private Double rating;
    
    @Column(name = "is_active")
    private Boolean isActive = true;
    
    // Constructors
    public Movie() {}
    
    public Movie(String title, String genre, Integer duration, String description, Date releaseDate, 
                 String language, String director, String cast, String posterUrl, Double rating) {
        this.title = title;
        this.genre = genre;
        this.duration = duration;
        this.description = description;
        this.releaseDate = releaseDate;
        this.language = language;
        this.director = director;
        this.cast = cast;
        this.posterUrl = posterUrl;
        this.rating = rating;
    }
    
    // Getters and Setters
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getGenre() {
        return genre;
    }
    
    public void setGenre(String genre) {
        this.genre = genre;
    }
    
    public Integer getDuration() {
        return duration;
    }
    
    public void setDuration(Integer duration) {
        this.duration = duration;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public Date getReleaseDate() {
        return releaseDate;
    }
    
    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }
    
    public String getLanguage() {
        return language;
    }
    
    public void setLanguage(String language) {
        this.language = language;
    }
    
    public String getDirector() {
        return director;
    }
    
    public void setDirector(String director) {
        this.director = director;
    }
    
    public String getCast() {
        return cast;
    }
    
    public void setCast(String cast) {
        this.cast = cast;
    }
    
    public String getPosterUrl() {
        return posterUrl;
    }
    
    public void setPosterUrl(String posterUrl) {
        this.posterUrl = posterUrl;
    }
    
    public Double getRating() {
        return rating;
    }
    
    public void setRating(Double rating) {
        this.rating = rating;
    }
    
    public Boolean getIsActive() {
        return isActive;
    }
    
    public void setIsActive(Boolean isActive) {
        this.isActive = isActive;
    }
    
    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", genre='" + genre + '\'' +
                ", duration=" + duration +
                ", releaseDate=" + releaseDate +
                ", language='" + language + '\'' +
                ", rating=" + rating +
                '}';
    }
}