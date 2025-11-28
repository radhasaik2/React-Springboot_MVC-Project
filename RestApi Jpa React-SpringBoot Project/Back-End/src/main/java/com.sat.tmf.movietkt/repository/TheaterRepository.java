package com.sat.tmf.movietkt.repository;

import com.sat.tmf.movietkt.entities.Theater;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TheaterRepository extends JpaRepository<Theater, Long> {
    List<Theater> findByLocation(String location);
}