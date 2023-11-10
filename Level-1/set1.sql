CREATE TABLE Customers
(
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(50)
);

INSERT INTO
    Customers
    (id, name, email, address, phone_number)
VALUES
    (1, 'Dev', 'dev@gmail.com', 'surat', 1234567899),
    (2, 'Alice','alice@gmail.com', 'New York', 9876543210),
    (3, 'Bob', 'bob@gmail.com', 'Los Angeles', 5555555555),
    (4, 'Charlie', 'charlie@gmail.com', 'Chicago', 1111111111),
    (5, 'Eve','eve@gmail.com', 'San Francisco', 9999999999);

SELECT * FROM Customers;

SELECT  name, email FROM Customers;

SELECT * FROM Customers WHERE id=3;

SELECT * FROM Customers WHERE name LIKE 'a%';

SELECT * FROM Customers  ORDER BY name DESC;

UPDATE Customers SET address='Delhi' WHERE id=4;

SELECT * FROM Customers  ORDER BY id ASC LIMIT 3;

DELETE FROM Customers WHERE id=2;

SELECT COUNT(*) FROM Customers;

SELECT * FROM Customers ORDER BY id LIMIT -1 OFFSET 2;

SELECT * FROM Customers WHERE id > 2 AND name LIKE 'b%';

SELECT * FROM Customers WHERE id < 3 OR name LIKE '%s';

SELECT * FROM Customers WHERE phone_number IS NULL OR phone_number = '';