-- Proyecto Final

USE WideWorldImporters;

-- Desempeño comercial

-- ¿Cuántos clientes activos tiene la empresa y en qué países están concentrados?

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';



SELECT * FROM Customers_Archive;
SELECT * FROM sales.customercategories;

SELECT * FROM sales.CustomerTransactions;
SELECT * FROM website.Customers;
SELECT DB_NAME();
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;

SELECT * FROM sales.invoices;
SELECT * FROM sales.customers;

SELECT COUNT(DISTINCT CustomerID) AS ClientesActivos
FROM Sales.Invoices;

SELECT
    co.CountryName,
    COUNT(DISTINCT i.CustomerID) AS ClientesActivos
FROM Sales.Invoices i
JOIN Sales.Customers c
    ON i.CustomerID = c.CustomerID
JOIN Application.Cities ci
    ON c.DeliveryCityID = ci.CityID
JOIN Application.StateProvinces sp
    ON ci.StateProvinceID = sp.StateProvinceID
JOIN Application.Countries co
    ON sp.CountryID = co.CountryID
GROUP BY co.CountryName
ORDER BY ClientesActivos DESC;



