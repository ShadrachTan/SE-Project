-- Table: customers
INSERT INTO customers (id, name, email, phone) VALUES
(1, 'John Doe', 'john.doe@example.com', '555-123-4567'),
(2, 'Jane Smith', 'jane.smith@example.com', '555-987-6543'),
(3, 'Bob Johnson', 'bob.j@example.com', '555-246-8101'),
(4, 'Alice Brown', 'alice.brown@example.com', '555-369-2580'),
(5, 'Charlie Davis', 'charlie.d@example.com', '555-654-3210');

-- Table: vehicles
INSERT INTO vehicles (id, customerId, make, model, year, vin) VALUES
(1, 1, 'Toyota', 'Camry', 2015, '1HGCM82633A123456'),
(2, 2, 'Ford', 'Mustang', 2018, '1FAFP404X5F123457'),
(3, 3, 'Honda', 'Civic', 2020, '2HGFB2F50FH123458'),
(4, 4, 'BMW', 'X5', 2017, 'WBAJE5C55G123459'),
(5, 5, 'Tesla', 'Model 3', 2021, '5YJ3E1EA7MF123460');

-- Table: services
INSERT INTO services (id, vehicleId, serviceType, serviceDate, cost) VALUES
(1, 1, 'Oil Change', '2024-09-01 10:00:00', 50.00),
(2, 2, 'Tire Rotation', '2024-08-25 14:30:00', 40.00),
(3, 3, 'Brake Replacement', '2024-08-18 09:00:00', 300.00),
(4, 4, 'Battery Replacement', '2024-07-30 11:15:00', 200.00),
(5, 5, 'Alignment', '2024-09-10 16:00:00', 100.00);

-- Table: parts
INSERT INTO parts (id, serviceId, partName, partNumber, cost) VALUES
(1, 1, 'Oil Filter', 'OF-1234', 10.00),
(2, 2, 'Tire', 'T-5678', 30.00),
(3, 3, 'Brake Pads', 'BP-9012', 150.00),
(4, 4, 'Battery', 'B-3456', 180.00),
(5, 5, 'Alignment Tools', 'AT-7890', 80.00);

-- Table: service_appointments
INSERT INTO service_appointments (id, serviceId, appointmentDate, status) VALUES
(1, 1, '2024-09-01 09:00:00', 'Completed'),
(2, 2, '2024-08-25 14:00:00', 'Completed'),
(3, 3, '2024-08-18 08:30:00', 'Completed'),
(4, 4, '2024-07-30 11:00:00', 'Completed'),
(5, 5, '2024-09-10 15:30:00', 'Scheduled');
