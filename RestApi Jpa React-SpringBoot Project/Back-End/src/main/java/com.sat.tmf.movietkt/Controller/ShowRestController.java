package com.sat.tmf.movietkt.controller;

import com.sat.tmf.movietkt.entities.Show;
import com.sat.tmf.movietkt.repository.ShowRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/shows")
@CrossOrigin(origins = {"http://localhost:1234", "http://127.0.0.1:1234"})
public class ShowRestController {

    @Autowired
    private ShowRepository showRepository;

    @GetMapping
    public List<Show> getAllShows() {
        return showRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Show> getShowById(@PathVariable Long id) {
        Optional<Show> show = showRepository.findById(id);
        return show.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/movie/{movieId}")
    public List<Show> getShowsByMovie(@PathVariable Long movieId) {
        return showRepository.findByMovieId(movieId);
    }

    @GetMapping("/theater/{theaterId}")
    public List<Show> getShowsByTheater(@PathVariable Long theaterId) {
        return showRepository.findByTheaterId(theaterId);
    }

    @PostMapping
    public Show createShow(@RequestBody Show show) {
        return showRepository.save(show);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Show> updateShow(@PathVariable Long id, @RequestBody Show showDetails) {
        Optional<Show> showOptional = showRepository.findById(id);
        if (showOptional.isPresent()) {
            Show show = showOptional.get();
            show.setMovieId(showDetails.getMovieId());
            show.setTheaterId(showDetails.getTheaterId());
            show.setShowTime(showDetails.getShowTime());
            show.setAvailableSeats(showDetails.getAvailableSeats());
            show.setPricePerTicket(showDetails.getPricePerTicket());
            return ResponseEntity.ok(showRepository.save(show));
        }
        return ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteShow(@PathVariable Long id) {
        if (showRepository.existsById(id)) {
            showRepository.deleteById(id);
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.notFound().build();
    }

    // Test endpoint
    @GetMapping("/test")
    public String test() {
        return "Show Controller is working!";
    }
}