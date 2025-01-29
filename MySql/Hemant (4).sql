CREATE DATABASE Disha3;
USE Disha3;
CREATE TABLE Customers(
ID int,
Name varchar(30),
Address varchar(30),
Age int,
CHECK (Age>=20)
);

INSERT INTO Customers VALUES(1,null,'Pune',21);
INSERT INTO Customers VALUES(2,'Mukesh','Thane',25);
INSERT INTO Customers VALUES(3,'Rani','Goa',22);
INSERT INTO Customers VALUES(4,'Meera','Mumbai',27);
SELECT * FROM Customers;

ALTER TABLE Customers ADD CHECK (Age>=18);

CREATE TABLE Customers1(
    ID int,
    Name varchar(25),
    Age int,
    Address varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=20 AND Address='Pune')
);
SELECT * FROM Customers1;

INSERT INTO Customers1 VALUES(1,'Ravi',21,'Pune');
INSERT INTO Customers1 VALUES(2,null,25,'Thane');
INSERT INTO Customers1 VALUES(3,'Rani',22,'Pune');
INSERT INTO Customers1 VALUES(4,'Meera',27,'Mumbai');