SELECT MAX(fare) AS max_fare, MIN(fare) AS min_fare FROM Rides;

SELECT driver_id, AVG(fare) AS avg_fare, AVG(distance) AS avg_distance FROM Rides GROUP BY driver_id;

SELECT driver_id, COUNT(*) AS total_rides FROM Rides GROUP BY driver_id HAVING COUNT(*) > 5;

SELECT Drivers.name AS driver_name, MAX(Rides.fare) AS max_fare
FROM Rides
INNER JOIN Drivers ON Rides.driver_id = Drivers.driver_id
GROUP BY Drivers.name
ORDER BY max_fare DESC
LIMIT 1;

SELECT driver_id, SUM(fare) AS total_earnd FROM Rides GROUP BY driver_id ORDER BY total_earnd DESC LIMIT 3;


SELECT *
FROM Rides
WHERE ride_date >= CURRENT_DATE - INTERVAL 7 DAY AND ride_date <= CURRENT_DATE;

SELECT * FROM Rides WHERE end_location IS NULL OR end_location = '';

SELECT id AS ride_id, fare / distance AS fare_per_mile FROM Rides ORDER BY fare_per_mile DESC;

SELECT
    Rides.ride_id,
    Drivers.driver_name,
    Passengers.name AS passenger_name
FROM
    Rides
INNER JOIN
    Drivers ON Rides.driver_id = Drivers.driver_id
INNER JOIN
    Passengers ON Rides.passenger_id = Passengers.passenger_id;


ALTER TABLE Rides ADD COLUMN tip DECIMAL(5, 2);