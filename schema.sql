CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(50)
);


CREATE TABLE vehicles (
  id INT PRIMARY KEY,
  customerId INT,
  make VARCHAR(255),
  model VARCHAR(255),
  year INT,
  vin VARCHAR(50),
  FOREIGN KEY (customerId) REFERENCES customers(id)
);


CREATE TABLE services (
  id INT PRIMARY KEY,
  vehicleId INT,
  serviceType VARCHAR(255),
  serviceDate TIMESTAMP,
  cost DECIMAL(10, 2),
  FOREIGN KEY (vehicleId) REFERENCES vehicles(id)
);


CREATE TABLE parts (
  id INT PRIMARY KEY,
  serviceId INT,
  partName VARCHAR(255),
  partNumber VARCHAR(50),
  cost DECIMAL(10, 2),
  FOREIGN KEY (serviceId) REFERENCES services(id)
);


CREATE TABLE service_appointments (
  id INT PRIMARY KEY,
  serviceId INT,
  appointmentDate TIMESTAMP,
  status VARCHAR(50),
  FOREIGN KEY (serviceId) REFERENCES services(id)
);
