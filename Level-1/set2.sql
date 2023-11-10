CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine_type VARCHAR(100),
    location VARCHAR(255),
    average_rating DECIMAL(3,2),
    delivery_available BOOLEAN
);

INSERT INTO
    Restaurants
    (id, name, cuisine_type, location, average_rating ,delivery_available)
VALUES
    (1, 'ZestyZomato', 'Indian', 'Surat', 4.5, True),
    (2, 'TastyTreats', 'Italian', 'New York', 4.2, False),
    (3, 'SpicySizzlers', 'Mexican', 'Los Angeles', 3.8, True),
    (4, 'CrispyCafe', 'Chinese', 'Chicago', 4.0, True),
    (5, 'SizzlingSteaks', 'American', 'San Francisco', 4.8, False);

SELECT * FROM Restaurants ORDER BY average_rating DESC;

SELECT * FROM Restaurants WHERE delivery_available = TRUE AND average_rating > 4;

SELECT * FROM Restaurants WHERE cuisine_type IS NULL OR cuisine_type = '';

SELECT COUNT(*) FROM Restaurants WHERE delivery_available = TRUE;

SELECT * FROM Restaurants WHERE location LIKE 'New York';

SELECT AVG(average_rating) AS average_rating FROM Restaurants;

SELECT * FROM Restaurants ORDER BY average_rating DESC LIMIT 5;

DELETE FROM Restaurants WHERE id = 3;