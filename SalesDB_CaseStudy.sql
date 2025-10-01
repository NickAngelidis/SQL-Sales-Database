-- 1. Creation of Database
CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;

-- 2. Table Customers 
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50),
    JoinDate DATE
);

-- Data Customers
INSERT INTO Customers (CustomerID, Name, Country, JoinDate) VALUES
(1, 'Alice', 'USA', '2023-01-05'),
(2, 'Bob', 'UK', '2023-03-12'),
(3, 'Charlie', 'USA', '2023-05-20');

-- 3. Table Products
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Data Products
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1200),
(2, 'Mouse', 25),
(3, 'Keyboard', 45);

-- 4. Table Orders
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Data Orders
INSERT INTO Orders (OrderID, CustomerID, ProductID, Quantity, OrderDate) VALUES
(1, 1, 1, 1, '2023-06-01'),
(2, 2, 2, 2, '2023-06-03'),
(3, 3, 3, 1, '2023-06-05'),
(4, 1, 2, 1, '2023-06-07');


