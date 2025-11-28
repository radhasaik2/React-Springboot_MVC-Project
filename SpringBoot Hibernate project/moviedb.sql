create database moviedb;
use moviedb;

--
SET SQL_SAFE_UPDATES = 0;
--
drop database moviedb;

-- 10.BookingSeats
-- insert into booking_seats (booking_id, template_seat_id, seatCode, price) values

select * from booking_seats;

-- 9.Bookings
-- insert into bookings (user_id, show_id, bookingTime, amount, status, holdExpiresAt) values

select * from bookings;

-- 3.MovieReviews
insert into movie_reviews (movie_id, user_id, rating, comment, createdAt) values
-- Reviews for Demon Slayer (movie_id 3)
(3, 1, 5, 'Absolutely breathtaking animation and emotional story! The Hashira Training arc was adapted perfectly.',Now()),
(3, 1, 4, 'Great movie but felt a bit short. The action sequences were incredible though!',Now()),
(3, 1, 5, 'Best Demon Slayer movie yet! The visuals and sound design are top-notch.',Now()),

-- Reviews for Jujutsu Kaisen 0 (movie_id 5)
(5, 1, 5, 'Yuta Okkotsu story was handled perfectly! The curse battles were insane!',Now()),
(5, 1, 4, 'Faithful adaptation of the prequel. Gojo scenes were worth the ticket price alone!',Now()),
(5, 1, 4, 'Solid movie with great animation. Some emotional moments really hit hard.',Now()),

-- Reviews for A Silent Voice (movie_id 7)
(7, 1, 5, 'This movie changed my perspective on life. Beautiful story about redemption.',Now()),
(7, 1, 5, 'One of the most touching animated films ever made. Cried multiple times.',Now()),
(7, 1, 4, 'Excellent character development and emotional depth. Highly recommended!',Now()),

-- Reviews for Animal (movie_id 20)
(20, 1, 3, 'Great performances but the runtime was too long. Some scenes could have been shorter.',Now()),
(20, 1, 4, 'Ranbir Kapoor delivers a powerful performance. Intense father-son drama.',Now()),
(20, 1, 5, 'Raw and violent but emotionally engaging. Not for the faint-hearted.',Now()),

-- Reviews for Spider-Man: Homecoming (movie_id 30)
(30, 1, 5, 'Tom Holland is the perfect Spider-Man! Fun, fresh and exciting.',Now()),
(30, 1, 4, 'Great high school take on Spider-Man. Michael Keaton was an excellent villain.',Now()),
(30, 1, 4, 'Really enjoyed the youthful energy and humor. Perfect balance of action and comedy.',Now());

-- to delete data added mistakenly
truncate table movie_reviews;

delete from movies where id=3;
select * from movie_reviews;

-- 2.Movies
insert into movies (title, language, genre, duration, description, posterUrl,trailerUrl) values
('Demon Slayer: Kimetsu no Yaiba – To the Hashira Training', 'Japanese,English', 'Action,Animation', 104, 'Tanjiro and his comrades complete their rehabilitation training at the Butterfly Mansion to prepare for their next mission against demons.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmm4NWk4X5eo5wthlS89bI0s-a2dQcu7MgM0LbcE4GkD56PElUKNm-pJKS0hbGYX0vtmbv_y43Sd8snognX9CyB_1iHfw5U232l4gDI0e2&s=10','https://www.youtube.com/embed/a9tq0aS5Zu8'),
('Demon Slayer: Kimetsu no Yaiba – To the Swordsmith Village', 'Japanese,English', 'Action,Animation', 110, 'Tanjiro ventures to the Swordsmith Village to repair his sword and encounters new enemies and allies.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbwpMHDzORf9ixm4BuCL944ScJ9UQlwoZey9Qqxfl7zJyO0TFxQKiC4pGy6y1LJd8hOkS6_RX3ZDqVmDf14rYz0a4CAcdnEwTzwQ6WJzNDsw&s=10','https://www.youtube.com/embed/ATJYac_dORw'),
('Jujutsu Kaisen 0', 'Japanese,English', 'Action,Supernatural', 105, 'Yuta Okkotsu becomes a Jujutsu Sorcerer to control the cursed spirit of his childhood friend.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT8PkifgvibnGkcDplA_luCuYfVVzuDQsUM7fZ3o0b_ujjt8uOZiKW3H-XFMLL69ZW0nfGtDmn3MMumV0S5BlwZFsMxjBLa-Gk2hLZk1Il&s=10','https://www.youtube.com/embed/8QkHWlrHqlE'),
('I Want to Eat Your Pancreas', 'Japanese', 'Romance,Drama', 108, 'A high school student discovers his classmates diary and learns she is suffering from a pancreatic disease.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ2fzL4myQW5-wtfsxCNGC65eqmVxV-nudEzjgXMrVXyWaX6pOJh7ZhnyPXLy2P4NbLqLISjsB0UHYfqbYjbQNlfS5wZDfrgFLMKYQCoR6&s=10','https://www.youtube.com/embed/MmoBvmJA9XI'),
('A Silent Voice', 'Japanese', 'Drama,Romance', 130, 'A former bully seeks redemption by befriending a deaf girl he once tormented in elementary school.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_ASbxEitmzH3jPekQwLhiK8Va9K8_7ZYTdK_yy1X7WJ07535ry35EArCuV8D_LqA-X-IIEJVeBZEgM_D6fvZRvyalXVN77d2V5x9og_m4&s=10','https://www.youtube.com/embed/nfK6UgLra7g'),
('Even If This Love Disappears from the World Tonight', 'Japanese', 'Romance,Drama', 122, 'A young couple navigates love and relationships in this heartfelt romantic drama.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlTdQQJos7CjzUor6fmaxET2j2VjNSR3dz6g&s','https://www.youtube.com/embed/JA2iC3kHgEM'),
('Tokyo Revengers', 'Japanese', 'Action,Time Travel', 120, 'A man travels back in time to his middle school days to save his ex-girlfriend from a tragic fate.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4D54IMUhCMnmx0GL6GcLgPo29ps8vVmL0Bz2ahnBcQLp7h0gYvlvZ_1EfKrrhQ6F6DQ-ZVGUIpCnm45Ei4Tj2iXc_jnrUDcfvPZaPfX8X&s=10','https://www.youtube.com/embed/WPoU2FQTMq4'),
('Tokyo Ghoul', 'Japanese', 'Horror,Action', 119, 'A college student becomes a half-ghoul after a chance encounter and must navigate both human and ghoul societies.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk--D0J0MvE1pYaWgB4F869MB5B1vWcL_dCQsQZGCkL0kPWJRF9iBctFYeq1V-xA2Zyiw0RqYPxo3lyU1A2wcuKVJF27KxWA7Q3sQUNO4pkw&s=10','https://www.youtube.com/embed/MqVLoui7aV0'),
('Our Secret Diary', 'Japanese,Korean', 'Romance,Comedy', 115, 'Two high school students develop feelings while working on a school project together.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQsq6D9Zswyhg3cVBhysirLehPnnPTwbyywyD9RJ19T8oWKzMUzHQ3WsjlfhCGd42Pm8N9XzqV1Tb1FGmL57Fef0j2jp3q_uxozbz_75FW&s=10','https://www.youtube.com/embed/ttueLIn__E8'),
('Spirited Away', 'Japanese,English', 'Animation,Fantasy', 125, 'A young girl wanders into a world of spirits where her parents are turned into pigs.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDQCxzbH2LVNhak6lorplVRFcvmzRjG69bK2qkcoknsCKyYyvP9krG3hR0BtV-SmsbUrUDsjsRDkRDGlhWoWNpZQtdWbTS3LeINr7fUPTt&s=10','https://www.youtube.com/embed/ByXuk9QqQkk'),
('Padi Padi Leche Manusu', 'Telugu', 'Romance,Drama', 145, 'A young couple faces challenges in their relationship while pursuing their dreams.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0yoQc6Hb4Gc8VFT-EykufdFl5nih6x3nWXu0DLQgOTJJ8lWHWMZle1-TCwVAJehkmNnERKAhieSFu2CnD_Av8Lii2zLtXEFA0CyqnXgwUeA&s=10','https://www.youtube.com/embed/IkLz6dhHmOQ'),
('Ghost Rider', 'English', 'Action,Fantasy', 114, 'A motorcycle stuntman becomes a supernatural vigilante after making a deal with the devil.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpMRI-BKMfPvJkx3bGEZBprCiS4hYN8IsWHFV1TwTLPceynmWq_vTyaxp-iqvOQdGiIAfSeIdshEB0FEIWLVCvdLrALLAuS639gwgrd-6Y&s=10','https://www.youtube.com/embed/nu6R7ypaz5g'),
('Rakshasudu', 'Telugu', 'Horror,Thriller', 138, 'A psychological thriller about a serial killer and the cop who tries to catch him.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmAuIVZ9F4WnVG6oR57wphcvDt5mYe3zMefgkIpOuBWeKZpcsap2wCe8OKV4rQ1J81nty2p3ZvlJoeEzVbUJxCyfCn0sQkMqHWxn7NrBHz&s=10','https://www.youtube.com/embed/DF6dmkWXTlY'),
('Kanchana', 'Tamil,Telugu', 'Horror,Comedy', 145, 'A man who fears ghosts becomes possessed by multiple spirits and must solve their unfinished business.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZcdrptKDr1tI4z4w4sEP3jT8wgDmHutYihw&s','https://www.youtube.com/embed/-16MdQ9Blgk'),
('Ganga', 'Telugu', 'Drama,Action', 150, 'A village story revolving around water disputes and social issues.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTShdCB4fPUlNWvji12Pbq2NbnCA9qaS-dYEa0u56nWE1YCu70sJxVobQyTafqOrfIBLOg0XVVCM337mqQ98VFESB1g73q4oqqOm0txl_4WIw&s=10','https://www.youtube.com/embed/1EOJ48Hgwmw'),
('Mahanati', 'Telugu,Tamil', 'Biography,Drama', 177, 'The life story of legendary South Indian actress Savitri.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2rmtcn97qtO6gxtaFbn4HiMgI6bJAgmEUuu6hSmbuIJhHvGj0soDLnhDIBfjcrOVQ1c8j23AMDAlPUtyJmKBdOTcQskloM_hbSZfsHEob3Q&s=10','https://www.youtube.com/embed/OrnYMmWBuV4'),
('Lucky Bhaskar', 'Telugu', 'Comedy,Drama', 140, 'A young mans journey through life and his encounters with luck.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRkzbfjlEGYyvqMnyjyRq22dh--051kfLk8A&s','https://www.youtube.com/embed/FonKx5wvuHI'),
('Animal', 'Hindi', 'Action,Drama', 201, 'A violent story of a father-son relationship and the complexities of family dynamics.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC-TWEXXu3R_Y3AVfPxsATpI5342f3Vvpfp-8iq7qtEbV3AWeYyouDSCt3QiYTENqyn_b3Y9w8-PJmfnotLg5psLEBj8AW6xo5zMuuSVyHiA&s=10','https://www.youtube.com/embed/8FkLRUJj-o0'),
('20th Century Girl', 'Korean', 'Romance,Drama', 119, 'A teen romance set in 1999 about a girl who tries to uncover the identity of her best friends crush.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTISnhrPO8vzAqp95yswZgDAtznglApaRdT7LTsRWczXSe6I7DyCM_uf3zilhsy1BKGSRjnQSzto5qphd1ptEZwbw8JO4jU36HibMpPRaEqvQ&s=10','https://www.youtube.com/embed/KFS4_qevE7M'),
('A Little Red Flower', 'Chinese', 'Romance,Drama', 128, 'Two cancer patients find love and hope while battling their illness in a hospital.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbx3zKiQLEdOE77tgIvyh_zuzkFhmPbNgmQ1jNi9Flj2cjvCxXg9hMh90F5V6ci2WgbtuYo0kzs-5VGknaBn3hDWaUQOmGpYwoMboQIbnh&s=10','https://www.youtube.com/embed/N7Q72fwBTq0'),
('Soulmate', 'Korean', 'Drama,Romance', 124, 'Two friends navigate their complicated relationship over the years while dealing with love and life.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlO_bmm8oYLTYwr0UddDOVBdQY9XMNWCfO9f99tYsDaOKqMFlFNRnbf7TtzDyadzhe9xKSE7YB4qnuqgk2zLYKQiCXCj1XrCo2_xhaFEAtrg&s=10','https://www.youtube.com/embed/94YuHAdNdd8'),
('Pretty Crazy', 'Korean', 'Comedy,Romance', 112, 'A romantic comedy about unexpected love between two very different people.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw2SYmjdC4bde_E_xK6wzORkKgpgtL5VrVHQdxRH_r5yCQD1zDRToq8t39Px1PPCRgUKTlC9CUCqgRq4OTIlVKXTkkJ2_srXa1vE4ijoT2hg&s=10','https://www.youtube.com/embed/-3YXmNAWqeo'),
('Ditto', 'Korean', 'Romance,Fantasy', 110, 'Two students from different years communicate through a ham radio and develop feelings for each other.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScfJHxkBGAcYkr5MyQ6nGRA6dX8YeNdogQ2A&s','https://www.youtube.com/embed/kQL9lxHW1aU'),
('Zombie Reddy', 'Telugu', 'Horror,Comedy', 138, 'A group of people try to survive a zombie apocalypse in rural Telangana.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxe-GanwEefNwdYt8IcKrXWTMpxI241M9nHb1x_gF66W-_OustLG8t6FsJQC8S3sWXKBeTQs_L8Z4mKfJ5aer1ag662n6KP4UHPqTS-SJVzA&s=10','https://www.youtube.com/embed/NHQn4AtMbns'),
('Culpa Mia', 'French', 'Comedy,Drama', 105, 'A family deals with unexpected situations when moved to their new family and their new house.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqzb3FvePGPoPO-qMCwaGJn38TEiqcqkndDkT4BnzbJMaDvbg60eUVP-xrfyBGt0QcNCDOw0TlTEdh79StipkPJLFHj93ZRRX1UwjxVWyI&s=10','https://www.youtube.com/embed/3CpKBAPqqM0'),
('After', 'English', 'Romance,Drama', 106, 'A young woman falls for a mysterious boy with a dark secret during her first year of college.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgTRyrKtST5OHt7pMrGrqOWKNznNEydDB4ObSVa_0q_G90vGDd5ZiM-M2aHq1Xqi2J1FJu6moXkdgJ_Nl2H0iXAULwwtZggvD870wOss0Y&s=10','https://www.youtube.com/embed/g99KPOpqZ4Q'),
('Through My Window', 'Spanish', 'Romance,Drama', 116, 'A young woman obsessed with her neighbor finally gets his attention, leading to a complicated relationship.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcWe10xZ-zLXMsaVHsd8LuoEfb9wnUqbccwIdBgx5PfwXeokFWnCi5vLuAAMuDA_tyNuQ8lrThmM1E2Ot9sMkiqZaB74yaYZk9q3xCq8KP&s=10','https://www.youtube.com/embed/jNXZO24fohs'),
('Spider-Man: Homecoming', 'English', 'Action,Adventure', 133, 'Peter Parker balances his life as an ordinary high school student with being a superhero.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN8tJfDE-OJO1oNlV4jH7y-GjB5SnNEGgTQCqBQ5l2_B-iZQNleMWA3MbKz9MO75pCwaZ3N9jZaLaxymDl9yIx0QswFvEotsrEJojwgesO&s=10','https://www.youtube.com/embed/rk-dF1lIbIg'),
('The Amazing Spider-Man', 'English', 'Action,Adventure', 136, 'Peter Parker discovers his powers and becomes Spider-Man while investigating his parents disappearance.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyaHgTGT5rTGTRiZj7jP8UJZwweCeKdakshJKA14dXbBVAUR2-pAzlQQ76zgG7_H7_rQxMqPHSHYQuWhXbgx-GUmGyzsTEXULEHREudD1z&s=10','https://www.youtube.com/embed/-tnxzJ0SSOw'),
('Dada', 'Telugu', 'Drama,Family', 142, 'A story about fatherhood and the challenges of raising a child as a single parent.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNGLwzKnF4C6v8tK4yLPJXmLJr4F8RS63s9FyuUyUmD7lSorn5jr7wpCUXIa3CI_PatBxTTmjUMX8j58ykBCKUkRbfUtTyYsf_kBh5qC62&s=10`','https://www.youtube.com/embed/23mMdgo0prk'),
('Stree', 'Hindi', 'Horror, Comedy', 90, 'The people of Chanderi live under constant fear of Stree, the spirit of a woman who attacks men at night during festivals. Vicky, along with his friends, decides to unravel the mystery.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYu8sL8PHzyEBxGejSv8PhJPuTEbbUaXhdow&s','https://www.youtube.com/embed/gzeaGcLLl_A');

-- movies added via page don't support trailerUrl column form
update movies
set trailerUrl = "https://www.youtube.com/embed/Iz97_kxHaSc"
where title="Hi Nanna";

update movies
set trailerUrl = "https://www.youtube.com/embed/O2x8gaL5Omw"
where title="Tune in for Love"; 

select * from movies;

-- 11.Payments
-- insert into payments (booking_id, user_id, amount, status, txnId, gateway, createdAt) values

select * from payments;

-- 12.Refunds
insert into refunds (payment_id, booking_id, user_id, amount, status, refundTxnId, createdAt, processedAt) values
(7, 7, 1, 400.00, 'SUCCESS', 'ref_123456', NOW(), NOW()),
(8, 8, 2, 700.00, 'SUCCESS', 'ref_123457', NOW(), NOW()),
(9, 9, 3, 550.00, 'INITIATED', 'ref_123458', NOW(), NULL);

-- 5.Screens
insert into screens (name, description, theater_id) values
('Screen 1', 'Main screen with Dolby Atmos', 1),
('Screen 2', 'Standard screen', 2),
('Screen B', 'IMAX screen', 2);

select * from screens;

-- 6.SeatTemplates
insert into seat_templates (name, rows_no, cols, screen_id) values
('VIP Layout', 3, 20, 1),
('Standard Layout', 20, 25, 2),
('Standard Layout', 15, 20, 3),
('IMAX Layout', 10, 15, 4);

delete from seat_templates;
select * from seat_templates;

-- 7.Shows
insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(4, 1, 6, '2025-11-29 18:30:00', 250),
(2, 2, 7, '2025-11-28 20:55:00', 300),
(3, 3, 8, '2025-11-30 06:30:00', 200),
(4, 4, 9, '2025-11-30 21:50:00', 180);

insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(29, 1, 6, '2025-11-29 18:30:00', 290),
(12, 2, 7, '2025-11-28 20:55:00', 300),
(13, 3, 8, '2025-11-30 06:30:00', 280),
(14, 4, 9, '2025-11-29 21:50:00', 250),
(24, 1, 6, '2025-11-29 18:30:00', 290),
(22, 2, 7, '2025-11-28 20:55:00', 300),
(33, 3, 8, '2025-11-30 06:30:00', 300),
(34, 4, 9, '2025-11-28 21:50:00', 300);

insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(19, 1, 6, '2025-11-29 18:30:00', 290),
(19, 2, 7, '2025-11-28 20:55:00', 300),
(18, 1, 6, '2025-11-29 18:30:00', 290),
(18, 2, 7, '2025-11-28 20:55:00', 300),
(23, 1, 6, '2025-11-29 18:30:00', 290),
(23, 2, 7, '2025-11-28 20:55:00', 300),
(19, 3, 8, '2025-11-30 06:30:00', 280);

insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(24, 1, 6, NOW(), 150),
(24, 2, 7, NOW(), 120),
(17, 3, 8, NOW(), 180),
(23, 4, 6, NOW(), 100),
(23, 5, 6, NOW(), 200),
(25, 4, 7, NOW(), 130),
(25, 1, 8, NOW() , 150);

insert into shows (movie_id, screen_id, seat_template_id, showTime, totalSeats) values
(11, 1, 6, NOW(), 150),
(11, 2, 7, NOW(), 120),
(12, 3, 8, NOW(), 180),
(16, 4, 6, NOW(), 100),
(16, 5, 6, NOW(), 200),
(11, 4, 7, NOW(), 130),
(21, 1, 8, NOW() , 150);

select * from shows;

-- 8.TemplateSeats
insert into template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) values
('A', 1, 'A1', 'REGULAR', 180.00, 6),
('M', 5, 'M5', 'REGULAR', 250.00, 7),
('F', 3, 'F3', ' ', 0 , 8),
('B', 2, 'B2', 'VIP', 300.00, 9);

-- Add seats for template 6 (used by shows 2, 22, 26)
DELETE FROM template_seats WHERE seat_template_id = 6;
INSERT INTO template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) VALUES
('A', 1, 'A1', 'VIP', 300.00, 6), ('A', 2, 'A2', 'VIP', 300.00, 6), ('A', 3, 'A3', 'VIP', 300.00, 6), ('A', 4, 'A4', 'VIP', 300.00, 6), ('A', 5, 'A5', 'VIP', 300.00, 6),
('B', 1, 'B1', 'REGULAR', 250.00, 6), ('B', 2, 'B2', 'REGULAR', 250.00, 6), ('B', 3, 'B3', 'REGULAR', 250.00, 6), ('B', 4, 'B4', 'REGULAR', 250.00, 6), ('B', 5, 'B5', 'REGULAR', 250.00, 6),
('C', 1, 'C1', 'REGULAR', 250.00, 6), ('C', 2, 'C2', 'REGULAR', 250.00, 6), ('C', 3, 'C3', 'REGULAR', 250.00, 6), ('C', 4, 'C4', 'REGULAR', 250.00, 6), ('C', 5, 'C5', 'REGULAR', 250.00, 6);

-- Add seats for template 7 (used by shows 3, 23, 27)
DELETE FROM template_seats WHERE seat_template_id = 7;
INSERT INTO template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) VALUES
('A', 1, 'A1', 'VIP', 350.00, 7), ('A', 2, 'A2', 'VIP', 350.00, 7), ('A', 3, 'A3', 'VIP', 350.00, 7), ('A', 4, 'A4', 'VIP', 350.00, 7), ('A', 5, 'A5', 'VIP', 350.00, 7),
('B', 1, 'B1', 'REGULAR', 280.00, 7), ('B', 2, 'B2', 'REGULAR', 280.00, 7), ('B', 3, 'B3', 'REGULAR', 280.00, 7), ('B', 4, 'B4', 'REGULAR', 280.00, 7), ('B', 5, 'B5', 'REGULAR', 280.00, 7),
('C', 1, 'C1', 'REGULAR', 280.00, 7), ('C', 2, 'C2', 'REGULAR', 280.00, 7), ('C', 3, 'C3', 'REGULAR', 280.00, 7), ('C', 4, 'C4', 'REGULAR', 280.00, 7), ('C', 5, 'C5', 'REGULAR', 280.00, 7);

-- Add seats for template 8 (used by shows 1, 4, 24, 28)
DELETE FROM template_seats WHERE seat_template_id = 8;
INSERT INTO template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) VALUES
('A', 1, 'A1', 'VIP', 320.00, 8), ('A', 2, 'A2', 'VIP', 320.00, 8), ('A', 3, 'A3', 'VIP', 320.00, 8), ('A', 4, 'A4', 'VIP', 320.00, 8), ('A', 5, 'A5', 'VIP', 320.00, 8),
('B', 1, 'B1', 'REGULAR', 270.00, 8), ('B', 2, 'B2', 'REGULAR', 270.00, 8), ('B', 3, 'B3', 'REGULAR', 270.00, 8), ('B', 4, 'B4', 'REGULAR', 270.00, 8), ('B', 5, 'B5', 'REGULAR', 270.00, 8),
('C', 1, 'C1', 'REGULAR', 270.00, 8), ('C', 2, 'C2', 'REGULAR', 270.00, 8), ('C', 3, 'C3', 'REGULAR', 270.00, 8), ('C', 4, 'C4', 'REGULAR', 270.00, 8), ('C', 5, 'C5', 'REGULAR', 270.00, 8);

-- Add seats for template 9 (used by shows 5, 25, 29)
DELETE FROM template_seats WHERE seat_template_id = 9;
INSERT INTO template_seats (rowLabel, col, seatCode, seatType, price, seat_template_id) VALUES
('A', 1, 'A1', 'VIP', 400.00, 9), ('A', 2, 'A2', 'VIP', 400.00, 9), ('A', 3, 'A3', 'VIP', 400.00, 9), ('A', 4, 'A4', 'VIP', 400.00, 9), ('A', 5, 'A5', 'VIP', 400.00, 9),
('B', 1, 'B1', 'REGULAR', 300.00, 9), ('B', 2, 'B2', 'REGULAR', 300.00, 9), ('B', 3, 'B3', 'REGULAR', 300.00, 9), ('B', 4, 'B4', 'REGULAR', 300.00, 9), ('B', 5, 'B5', 'REGULAR', 300.00, 9),
('C', 1, 'C1', 'REGULAR', 300.00, 9), ('C', 2, 'C2', 'REGULAR', 300.00, 9), ('C', 3, 'C3', 'REGULAR', 300.00, 9), ('C', 4, 'C4', 'REGULAR', 300.00, 9), ('C', 5, 'C5', 'REGULAR', 300.00, 9);

select * from template_seats;

-- 4.Theaters
insert into theaters (name, city, address) value
('Varun INOX', 'Visakhapatnam', 'Varun Beach Road');

select * from theaters;

-- 1. Users
-- role assigned by updating in db manually rather than explicitly for admin
update users
set role ="ADMIN" 
where username="admin_01";

update users
set role ="ADMIN" 
where username="admin_02";

select * from users;
