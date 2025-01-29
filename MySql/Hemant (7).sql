CREATE DATABASE Disha6;
Use Disha6;
CREATE TABLE Customers4(
CustomerID int,
CustomerName varchar(30),
ContactName varchar(30),
Address varchar(30),
City varchar(30),
PostalCode varchar(30),
Country varchar(30)
);

INSERT INTO Customers4 VALUES(1,'Alfreds Futterkiste','Maria Anders','Obere Str.57','Berlin',12209,'Germany');
INSERT INTO Customers4 VALUES(2,'Ana Trujillo helados','Ana Trujillo','Avda.dela 22','MexicoD.F.',05021,'Mexico');
INSERT INTO Customers4 VALUES(3,'Anatonio Moreno','Anatonio Taquerio','Mataderos','MexicoD.F.',105023,'Mexico');
INSERT INTO Customers4 VALUES(4,'Around Hound','Thomas Hardy','120Hanover','London',97344,'UK');
INSERT INTO Customers4 VALUES(5,'Berglund snabbkop','Christna Berglund','Obere Str.57','London',65143,'Sweden');
INSERT INTO Customers4 VALUES(6,'Blauer See','Hanna Moos','Forsterstr.57','Mannheim',68306,'Germany');
SELECT * FROM Customers4;

SELECT * FROM Customers4 WHERE CustomerName LIKE 'a%';

SELECT * FROM Customers4 WHERE CustomerName LIKE '%a';

SELECT * FROM Customers4 WHERE CustomerName LIKE '%or%';

SELECT * FROM Customers4 WHERE CustomerName LIKE '_r%';

SELECT * FROM Customers4 WHERE CustomerName LIKE 'a__%';

SELECT * FROM Customers4 WHERE ContactName LIKE 'a%o';

SELECT * FROM Customers4 WHERE CustomerName NOT LIKE 'a%';
