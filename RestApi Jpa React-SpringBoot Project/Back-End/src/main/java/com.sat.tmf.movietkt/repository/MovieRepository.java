package com.sat.tmf.movietkt.repository;

import com.sat.tmf.movietkt.entities.Movie;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    Page<Movie> findAll(Pageable pageable);
    List<Movie> findByGenre(String genre);
    List<Movie> findByTitleContainingIgnoreCase(String title);
    List<Movie> findByLanguage(String language);
    List<Movie> findByDirectorContainingIgnoreCase(String director);
    List<Movie> findByIsActiveTrue();
    List<Movie> findByRatingGreaterThanEqual(Double rating);
    Page<Movie> findByIsActiveTrue(Pageable pageable);
}