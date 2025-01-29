CREATE DATABASE Disha5;
USE Disha5;
CREATE TABLE Customers3(
CustomerID int,
CustomerName varchar(30),
ContactName varchar(30),
Address varchar(30),
City varchar(30),
PostalCode int,
Country varchar(30)
);

INSERT INTO Customers3 VALUES(1,'Alfreds Futterkiste','Maria Anders','Obere Str.57','Berlin',12209,'Germany');
INSERT INTO Customers3 VALUES(2,'Ana Trujillo helados','Ana Trujillo','Avda.dela 22','MexicoD.F.',05021,'Mexico');
INSERT INTO Customers3 VALUES(3,'Anatonio Moreno','Anatonio Taquerio','Mataderos','MexicoD.F.',105023,'Mexico');
SELECT * FROM Customers3;

CREATE TABLE Suppliers(
SupplierID int,
SupplierName varchar(30),
ContactName varchar(30),
Address varchar(30),
City varchar(30),
PostalCode int,
Country varchar(30)
);

INSERT INTO Suppliers VALUES(1,'Exotic Liquid','Charlotte Cooper','49 Gilbert','London',75643,'UK');
INSERT INTO Suppliers VALUES(2,'New Orleans','Shelley Burke','P.O.Box789','New Orleans',70117,'USA');
INSERT INTO Suppliers VALUES(3,'Grandma Kellys','Regina Murphy','707 Oxford','Ann Arbor',48104,'USA');
SELECT * FROM Suppliers;

SELECT City FROM Customers3
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT City FROM Customers3
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

SELECT City, Country FROM Customers3
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT City, Country FROM Customers3
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers3
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;