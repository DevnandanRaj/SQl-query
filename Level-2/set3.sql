CREATE TABLE Rides (
    id INT PRIMARY KEY,
    driver_id INT,
    passenger_id INT,
    start_location VARCHAR(255),
    end_location VARCHAR(255),
    distance DECIMAL(5,2),
    ride_time DECIMAL(5,2),
    fare DECIMAL(6,2)
);

INSERT INTO
    Rides
    (id, driver_id, passenger_id, start_location, end_location, distance,ride_time, fare)
VALUES
    (1, 101, 201, 'Central Park', 'Times Square', 10.5, 30, 20.50),
    (2, 102, 202, 'Brooklyn Bridge', 'Empire State Building', 8.2, 75, 15.75),
    (3, 103, 203, 'Statue of Liberty', 'Grand Central Terminal', 15.0, 15, 30.00),
    (4, 104, 204, 'Downtown Chicago', 'Navy Pier', 5.7, 20, 12.80),
    (5, 101, 205, 'Golden Gate Park', 'Brooklyn Bridge', 12.3, 120, 25.60);
   
SELECT * FROM Rides ORDER BY fare DESC;

SELECT SUM(distance) AS total_distance, SUM(fare) AS total_fare FROM Rides;

SELECT AVG(ride_time) AS avg_ride_time FROM Rides;

SELECT * FROM Rides WHERE start_location LIKE 'Downtown%' OR end_location LIKE 'Downtown%';

SELECT COUNT(driver_id) FROM Rides WHERE driver_id = 101;

UPDATE Rides SET fare = 50.00 WHERE id = 4;

SELECT driver_id, SUM(fare) AS total_fare FROM Rides GROUP BY driver_id;

DELETE FROM Rides WHERE id = 2;