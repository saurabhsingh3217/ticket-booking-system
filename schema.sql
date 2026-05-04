-- Create Tables

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Shows (
    show_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    show_time TIMESTAMP
);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY,
    show_id INT,
    status VARCHAR(20),
    version INT DEFAULT 1
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    user_id INT,
    show_id INT,
    seat_id INT,
    status VARCHAR(20),
    booking_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);