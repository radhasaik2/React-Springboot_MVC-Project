package com.sat.tmf.movietkt.controller;

import com.sat.tmf.movietkt.entities.Movie;
import com.sat.tmf.movietkt.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/movies")
@CrossOrigin(origins = {"http://localhost:1234", "http://127.0.0.1:1234"}) // Allow all origins for testing
public class MovieRestController {

    @Autowired
    private MovieRepository movieRepository;

    @GetMapping
    public ResponseEntity<Page<Movie>> getAllMovies(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        
        Pageable pageable = PageRequest.of(page, size);
        Page<Movie> moviesPage = movieRepository.findAll(pageable);
        
        return ResponseEntity.ok(moviesPage);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Movie>> getAllMoviesWithoutPagination() {
        List<Movie> movies = movieRepository.findAll();
        return ResponseEntity.ok(movies);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Movie> getMovieById(@PathVariable Long id) {
        Optional<Movie> movie = movieRepository.findById(id);
        return movie.map(ResponseEntity::ok)
                   .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/genre/{genre}")
    public ResponseEntity<List<Movie>> getMoviesByGenre(@PathVariable String genre) {
        List<Movie> movies = movieRepository.findByGenre(genre);
        return ResponseEntity.ok(movies);
    }

    @GetMapping("/search")
    public ResponseEntity<List<Movie>> searchMovies(@RequestParam String title) {
        List<Movie> movies = movieRepository.findByTitleContainingIgnoreCase(title);
        return ResponseEntity.ok(movies);
    }

    // Add a test endpoint to verify the controller is working
    @GetMapping("/test")
    public ResponseEntity<String> test() {
        return ResponseEntity.ok("Movie Controller is working!");
    }
}