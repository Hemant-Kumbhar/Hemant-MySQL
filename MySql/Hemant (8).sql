CREATE DATABASE Disha7;
Use Disha7;
CREATE TABLE Products(
ProductID int,
ProductName varchar(30),
SupplierID int,
CategoryID int,
Unit varchar(30),
Price varchar(30),
PRIMARY KEY (ProductID)
);

INSERT INTO Products VALUES(1,'Chais',1,1,'10 boxes x 20 bags',18);
INSERT INTO Products VALUES(2,'Chang',1,1,'24-12 oz bottles',19);
INSERT INTO Products VALUES(3,'Aniseed Syrup',1,2,'12-550 ml bottles',10);
INSERT INTO Products VALUES(4,'Chef Antons',2,2,'48-6 oz jars',22);
INSERT INTO Products VALUES(5,'Chef Mix',2,2,'36 boxes',21.35);
INSERT INTO Products VALUES(6,'Grandmas Spread',3,2,'12-8 oz jars',25);
INSERT INTO Products VALUES(7,'Uncle Bobs',3,7,'12-1 IB pkgs',30);

CREATE TABLE OrderDetails(
OrderDetailID int,
OrderID int,
ProductID int, 
Quantity int,
PRIMARY KEY (OrderDetailID),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails VALUES(1,10248,2,12);
INSERT INTO OrderDetails VALUES(2,10248,2,10);
INSERT INTO OrderDetails VALUES(3,10258,3,5);
INSERT INTO OrderDetails VALUES(4,10249,1,9);
INSERT INTO OrderDetails VALUES(5,10251,4,40);

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
  SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 25);
  
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 10);

SELECT ALL ProductName FROM Products WHERE TRUE;

SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);