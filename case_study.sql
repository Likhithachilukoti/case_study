create database case_study1

use case_study1

CREATE TABLE Vehicle (
    vehicleID INT PRIMARY KEY IDENTITY(1,1),
    make VARCHAR(100),
    model VARCHAR(50),
    year INT,
    dailyRate DECIMAL(10, 2),
    status VARCHAR(50) CHECK (status IN ('available', 'notAvailable')),
    passengerCapacity INT,
    engineCapacity INT
)

CREATE TABLE Customer (
    customerID INT PRIMARY KEY IDENTITY(1,1),
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phoneNumber VARCHAR(20)
)

CREATE TABLE Lease (
    leaseID INT PRIMARY KEY IDENTITY(1,1),
    vehicleID INT,
    customerID INT,
    startDate DATE,
    endDate DATE,
    type VARCHAR(50),
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
)

CREATE TABLE Payment (
    paymentID INT PRIMARY KEY IDENTITY(1,1),
    leaseID INT,
    paymentDate DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (leaseID) REFERENCES Lease(leaseID)
)

INSERT INTO Vehicle (make, model, year, dailyRate, status, passengerCapacity, engineCapacity)
VALUES 
('Toyota', 'Camry', 2019, 50.00, 'available', 5, 2000),
('Honda', 'Accord', 2020, 55.00, 'available', 5, 1800),
('Ford', 'Fusion', 2018, 45.00, 'available', 5, 2200),
('Chevrolet', 'Malibu', 2017, 40.00, 'notAvailable', 5, 1900),
('Nissan', 'Altima', 2016, 42.00, 'available', 5, 2100),
('Hyundai', 'Sonata', 2019, 48.00, 'notAvailable', 5, 1950),
('Kia', 'Optima', 2021, 60.00, 'available', 5, 1850),
('Volkswagen', 'Passat', 2020, 58.00, 'available', 5, 1700),
('BMW', '3 Series', 2019, 70.00, 'notAvailable', 5, 2500),
('Mercedes-Benz', 'C-Class', 2022, 75.00, 'available', 5, 2400);


INSERT INTO Customer (firstName, lastName, email, phoneNumber)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210'),
('Michael', 'Johnson', 'michael.johnson@example.com', '555-555-5555'),
('Emily', 'Brown', 'emily.brown@example.com', '111-111-1111'),
('David', 'Williams', 'david.williams@example.com', '222-222-2222'),
('Jessica', 'Davis', 'jessica.davis@example.com', '333-333-3333'),
('Christopher', 'Miller', 'christopher.miller@example.com', '444-444-4444'),
('Sarah', 'Wilson', 'sarah.wilson@example.com', '666-666-6666'),
('Matthew', 'Martinez', 'matthew.martinez@example.com', '777-777-7777'),
('Amanda', 'Taylor', 'amanda.taylor@example.com', '888-888-8888');


INSERT INTO Lease (vehicleID, customerID, startDate, endDate, type)
VALUES 
(1, 1, '2024-03-01', '2024-03-10', 'Short-term'),
(2, 2, '2024-03-02', '2024-03-12', 'Long-term'),
(3, 3, '2024-03-03', '2024-03-13', 'Short-term'),
(4, 4, '2024-03-04', '2024-03-14', 'Long-term'),
(5, 5, '2024-03-05', '2024-03-15', 'Short-term'),
(6, 6, '2024-03-06', '2024-03-16', 'Long-term'),
(7, 7, '2024-03-07', '2024-03-17', 'Short-term'),
(8, 8, '2024-03-08', '2024-03-18', 'Long-term'),
(9, 9, '2024-03-09', '2024-03-19', 'Short-term'),
(10, 10, '2024-03-10', '2024-03-20', 'Long-term');

INSERT INTO Payment (leaseID, paymentDate, amount)
VALUES 
(1, '2024-03-01', 100.00),
(2, '2024-03-02', 200.00),
(3, '2024-03-03', 150.00),
(4, '2024-03-04', 250.00),
(5, '2024-03-05', 180.00),
(6, '2024-03-06', 300.00),
(7, '2024-03-07', 220.00),
(8, '2024-03-08', 270.00),
(9, '2024-03-09', 190.00),
(10, '2024-03-10', 320.00);

