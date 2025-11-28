package com.sat.tmf.movietkt.repository;

import com.sat.tmf.movietkt.entities.Booking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {
    List<Booking> findByUserId(Long userId);
    List<Booking> findByMovieId(Long movieId);
    List<Booking> findByShowId(Long showId);
}
