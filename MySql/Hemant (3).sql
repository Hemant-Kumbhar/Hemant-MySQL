CREATE DATABASE Disha2;
USE Disha2;
CREATE TABLE Masters(
Id int,
Name varchar(30),
Gender varchar(30),
Address varchar(30)
);

INSERT INTO Masters VALUES(1,'Vani','Female','Pune');
INSERT INTO Masters VALUES(2,'Veer','Male','Pune');
INSERT INTO Masters VALUES(3,'Raj','Male','Mumbai');
INSERT INTO Masters VALUES(4,'Rashi','Female','Goa');
INSERT INTO Masters VALUES(5,'Giya','Female','Gurgoan');
INSERT INTO Masters VALUES(6,'Manoj','Male','Satara');
INSERT INTO Masters VALUES(7,'Shreeya','Female','Mumbai');
INSERT INTO Masters VALUES(8,'Mahesh','Male','Kolkata');
INSERT INTO Masters VALUES(9,'Rohan','Male','Goa');
INSERT INTO Masters VALUES(10,'Meena','Female','Satara');
select * from Masters;

SELECT COUNT(Gender), Address FROM Masters GROUP BY Address;

SELECT COUNT(Gender), Address FROM Masters GROUP BY Address
ORDER BY COUNT(Gender) DESC;

CREATE TABLE Shippers(
ShipperID int NOT NULL,
ShipperName varchar(30),
PRIMARY KEY (ShipperID)
);

INSERT INTO Shippers VALUES(1,'Speedy Express');
INSERT INTO Shippers VALUES(2,'United Package');
INSERT INTO Shippers VALUES(3,'Federal Shipping');
select * from Shippers;

CREATE TABLE Orders(
OrderID int NOT NULL,
CustomerID varchar(30),
EmployeeID varchar(30),
OrderDate varchar(30),
ShipperID int NOT NULL,
PRIMARY KEY (OrderID),
FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID)
);

INSERT INTO Orders VALUES(10248,90,5,'1996-07-04',3);
INSERT INTO Orders VALUES(10249,81,6,'1996-07-05',1);
INSERT INTO Orders VALUES(10250,34,4,'1996-07-08',2);
select * from orders;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;