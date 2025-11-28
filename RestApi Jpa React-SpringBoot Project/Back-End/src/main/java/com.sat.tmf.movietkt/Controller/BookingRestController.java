package com.sat.tmf.movietkt.controller;

import com.sat.tmf.movietkt.entities.Booking;
import com.sat.tmf.movietkt.repository.BookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/bookings")
@CrossOrigin(origins = {"http://localhost:1234", "http://127.0.0.1:1234"}) // Allow all origins for testing
public class BookingRestController {

    @Autowired
    private BookingRepository bookingRepository;

    @GetMapping
    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Booking> getBookingById(@PathVariable Long id) {
        Optional<Booking> booking = bookingRepository.findById(id);
        return booking.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/user/{userId}")
    public List<Booking> getBookingsByUser(@PathVariable Long userId) {
        return bookingRepository.findByUserId(userId);
    }

    @GetMapping("/movie/{movieId}")
    public List<Booking> getBookingsByMovie(@PathVariable Long movieId) {
        return bookingRepository.findByMovieId(movieId);
    }

    @PostMapping
    public Booking createBooking(@RequestBody Booking booking) {
        return bookingRepository.save(booking);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Booking> updateBooking(@PathVariable Long id, @RequestBody Booking bookingDetails) {
        Optional<Booking> bookingOptional = bookingRepository.findById(id);
        if (bookingOptional.isPresent()) {
            Booking booking = bookingOptional.get();
            booking.setUserId(bookingDetails.getUserId());
            booking.setMovieId(bookingDetails.getMovieId());
            booking.setShowId(bookingDetails.getShowId());
            booking.setNumberOfTickets(bookingDetails.getNumberOfTickets());
            booking.setTotalPrice(bookingDetails.getTotalPrice());
            booking.setBookingDate(bookingDetails.getBookingDate());
            return ResponseEntity.ok(bookingRepository.save(booking));
        }
        return ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteBooking(@PathVariable Long id) {
        if (bookingRepository.existsById(id)) {
            bookingRepository.deleteById(id);
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.notFound().build();
    }
}
