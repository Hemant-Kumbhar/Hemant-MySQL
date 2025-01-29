CREATE DATABASE Disha4;
USE Disha4;
CREATE TABLE Customers2(
CustomerID int,
CustomerName varchar(30),
ContactName varchar(30),
Country varchar(30),
PRIMARY KEY(CustomerID)
);

INSERT INTO Customers2 VALUES(1,'Alfreds Futterkiste','Maria Anders','Germany');
INSERT INTO Customers2 VALUES(2,'Emparedado','Ana Trujillo','Mexico');
INSERT INTO Customers2 VALUES(3,'Taqueria','Antoni Moreno','Mexico');
SELECT * FROM Customers2;

CREATE TABLE Orders2(
OrderID int,
CustomerID int,
OrderDate varchar(30),
PRIMARY KEY(OrderID),
FOREIGN KEY(CustomerID) REFERENCES Customers2(CustomerID)
);

INSERT INTO Orders2 VALUES(10308,2,'1996-09-18');
INSERT INTO Orders2 VALUES(10309,1,'1996-09-19');
INSERT INTO Orders2 VALUES(10310,3,'1996-09-20');
SELECT * FROM Orders2;

SELECT Orders2.OrderID, Customers2.CustomerName, Orders2.OrderDate
FROM Orders2
INNER JOIN Customers2 ON Orders2.CustomerID=Customers2.CustomerID;

SELECT Customers2.CustomerName, Orders2.OrderID
FROM Customers2
LEFT JOIN Orders2 ON Customers2.CustomerID = Orders2.CustomerID
ORDER BY Customers2.CustomerName;

SELECT Orders2.OrderID, Customers2.CustomerName
FROM Orders2
RIGHT JOIN Customers2 ON Orders2.CustomerID = Customers2.CustomerID
ORDER BY Orders2.OrderID;

SELECT Customers2.CustomerName, Orders2.OrderID
FROM Customers2
CROSS JOIN Orders2;

SELECT Customers2.CustomerName, Orders2.OrderID
FROM Customers2
CROSS JOIN Orders2
WHERE Customers2.CustomerID=Orders2.CustomerID;

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.Country
FROM Customers2 A, Customers2 B
WHERE A.CustomerID <> B.CustomerID
AND A.Country = B.Country
ORDER BY A.Country;