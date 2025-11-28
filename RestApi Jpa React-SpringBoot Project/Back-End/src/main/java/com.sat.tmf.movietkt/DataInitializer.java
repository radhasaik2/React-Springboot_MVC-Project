package com.sat.tmf.movietkt;

import com.sat.tmf.movietkt.entities.Movie;
import com.sat.tmf.movietkt.entities.User;
import com.sat.tmf.movietkt.entities.Theater;
import com.sat.tmf.movietkt.entities.Show;
import com.sat.tmf.movietkt.repository.MovieRepository;
import com.sat.tmf.movietkt.repository.UserRepository;
import com.sat.tmf.movietkt.repository.TheaterRepository;
import com.sat.tmf.movietkt.repository.ShowRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import java.util.Date;

@Component
public class DataInitializer implements CommandLineRunner {

    @Autowired
    private MovieRepository movieRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private TheaterRepository theaterRepository;

    @Autowired
    private ShowRepository showRepository;

    @Override
    public void run(String... args) throws Exception {
        // Add sample movies if database is empty
        if (movieRepository.count() == 0) {
            addSampleData();
        }
    }

    private void addSampleData() {
        // Add Movies
        Movie movie1 = new Movie();
        movie1.setTitle("A Silent Voice");
        movie1.setGenre("Romance, Drama");
        movie1.setDuration(181);
        movie1.setDescription("After bullying Shoko, a girl with hearing impairment, Shoya is consumed with guilt. Soon, several incidents at the school make things worse and he sets out to make amends.");
        movie1.setReleaseDate(new Date());
        movie1.setLanguage("Japan");
        movie1.setDirector("Naoko Yamada");
        movie1.setCast("Lexi Marman, Robbie Daymond");
        movie1.setRating(8.9);
        movie1 = movieRepository.save(movie1);

        Movie movie2 = new Movie();
        movie2.setTitle("Your Name");
        movie2.setGenre("Romance, Fantasy");
        movie2.setDuration(176);
        movie2.setDescription("Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and girl decide to meet in person.");
        movie2.setReleaseDate(new Date(System.currentTimeMillis() - 86400000L)); // Yesterday
        movie2.setLanguage("Japan, English");
        movie2.setDirector("Makoto Shinkai");
        movie2.setCast("Ryuunosuke Kamiki, Masami Nagasawa, Mone Kamishiraishi");
        movie2.setRating(9.8);
        movie2 = movieRepository.save(movie2);

        Movie movie3 = new Movie();
        movie3.setTitle("Train To Busan");
        movie3.setGenre("Action, Horror");
        movie3.setDuration(166);
        movie3.setDescription("Seok-woo and his daughter are on a train to Busan on the latter's birthday to see his wife. However, the journey turns into a nightmare when they are trapped amidst a zombie outbreak in South Korea.");
        movie3.setReleaseDate(new Date(System.currentTimeMillis() + 86400000L)); // Tomorrow
        movie3.setLanguage("Korean, Thai, French");
        movie3.setDirector("Yeon Sang-ho");
        movie3.setCast("Gong Yoo, Ma Dong Seok, Kim Su-an");
        movie3.setRating(9.7);
        movie3 = movieRepository.save(movie3);

        // Add User
        User user = new User();
        user.setUsername("john_doe");
        user.setEmail("john@example.com");
        user.setPassword("password123");
        user.setFirstName("John");
        user.setLastName("Doe");
        user.setPhoneNumber("1234567890");
        user = userRepository.save(user);

        // Add Theaters
        Theater theater1 = new Theater();
        theater1.setName("PVR Cinemas");
        theater1.setLocation("Madhurawada");
        theater1.setCapacity(200);
        theater1.setScreenType("IMAX");
        theater1 = theaterRepository.save(theater1);

        Theater theater2 = new Theater();
        theater2.setName("INOX");
        theater2.setLocation("Varun Inox");
        theater2.setCapacity(150);
        theater2.setScreenType("Dolby Atmos");
        theater2 = theaterRepository.save(theater2);

     // Add Shows with future dates
        Show show1 = new Show();
        show1.setMovieId(movie1.getId());
        show1.setTheaterId(theater1.getId());
        show1.setShowTime(new Date(System.currentTimeMillis() + 3600000L)); // 1 hour from now
        show1.setAvailableSeats(100);
        show1.setPricePerTicket(12.50);
        showRepository.save(show1);

        Show show2 = new Show();
        show2.setMovieId(movie2.getId());
        show2.setTheaterId(theater1.getId());
        show2.setShowTime(new Date(System.currentTimeMillis() + 7200000L)); // 2 hours from now
        show2.setAvailableSeats(80);
        show2.setPricePerTicket(10.00);
        showRepository.save(show2);

        Show show3 = new Show();
        show3.setMovieId(movie3.getId());
        show3.setTheaterId(theater2.getId());
        show3.setShowTime(new Date(System.currentTimeMillis() + 10800000L)); // 3 hours from now
        show3.setAvailableSeats(120);
        show3.setPricePerTicket(15.00);
        showRepository.save(show3);
        
        System.out.println("Sample data added successfully!");
        System.out.println("Movies: " + movieRepository.count());
        System.out.println("Users: " + userRepository.count());
        System.out.println("Theaters: " + theaterRepository.count());
        System.out.println("Shows: " + showRepository.count());
    }
}