package com.sat.tmf.movietkt.controller;

import com.sat.tmf.movietkt.entities.Theater;
import com.sat.tmf.movietkt.repository.TheaterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/theaters")
@CrossOrigin(origins = {"http://localhost:1234", "http://127.0.0.1:1234"}) // Allow all origins for testing
public class TheaterRestController {

    @Autowired
    private TheaterRepository theaterRepository;

    @GetMapping
    public List<Theater> getAllTheaters() {
        return theaterRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Theater> getTheaterById(@PathVariable Long id) {
        Optional<Theater> theater = theaterRepository.findById(id);
        return theater.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/location/{location}")
    public List<Theater> getTheatersByLocation(@PathVariable String location) {
        return theaterRepository.findByLocation(location);
    }

    @PostMapping
    public Theater createTheater(@RequestBody Theater theater) {
        return theaterRepository.save(theater);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Theater> updateTheater(@PathVariable Long id, @RequestBody Theater theaterDetails) {
        Optional<Theater> theaterOptional = theaterRepository.findById(id);
        if (theaterOptional.isPresent()) {
            Theater theater = theaterOptional.get();
            theater.setName(theaterDetails.getName());
            theater.setLocation(theaterDetails.getLocation());
            theater.setCapacity(theaterDetails.getCapacity());
            return ResponseEntity.ok(theaterRepository.save(theater));
        }
        return ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTheater(@PathVariable Long id) {
        if (theaterRepository.existsById(id)) {
            theaterRepository.deleteById(id);
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.notFound().build();
    }
}