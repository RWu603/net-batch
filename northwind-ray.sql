--RAY WU

--Q1
SELECT CustomerID, ContactName, City, Region
from Customers;

--Q2
SELECT CustomerID, ContactName, City, Region, PostalCode
from Customers 
WHERE PostalCode LIKE '[0-9]%'

--Q3
SELECT CustomerID, ContactName, City, Region
FROM Customers
WHERE Region IS NULL

--Q4
SELECT CustomerID, ContactName, City, Region
FROM Customers
WHERE Region IS NOT NULL

--Q5
SELECT CustomerID, ContactName, City, Region
FROM Customers
WHERE Region IS NOT NULL AND City != 'London'

--Q6
SELECT City + ' ' + Region AS Report
FROM Customers
Where Region IS NOT NULL

--Q7
SELECT 'NAME: ' + ContactName + ' -- TITLE: ' + ContactTitle AS NAME
FROM Customers
WHERE ContactTitle = 'Owner'

--Q8
SELECT ProductID, ProductName
FROM Products
Where ProductID >= 40 AND ProductID <= 50

--Q9
SELECT ProductID, ProductName, CategoryID
FROM Products
WHERE CategoryID = 1 OR CategoryID = 2;

--Q10
SELECT * FROM Products
WHERE ProductName like 'S%'

--Q11
SELECT ProductName as Name, UnitPrice as ListPrice
FROM Products
WHERE ProductName like 'S%'
ORDER BY Name asc

--Q12
SELECT ProductName as Name, UnitPrice as ListPrice
FROM Products
WHERE ProductName like 'O%' or ProductName like 'T%'
ORDER BY Name asc

--Q13
SELECT * FROM Products
WHERE ProductName like 'SI[^N]%'

--Q14
SELECT DISTINCT ContactTitle
FROM Customers
ORDER BY ContactTitle DESC

--Q15
SELECT DISTINCT City, Region
FROM Customers
WHERE City IS NOT NULL and Region IS NOT NULL
ORDER BY City, Region DESC