-- Comentario multilinea
/*
Ejemplo 
Ejemplo
Ejemplo
*/

-- Hola 
-- 1. Definir qué BBDD se va a usar
USE Chinook;

-- 2. Seleccionar datos de tabla
-- * equivale a todo (filas o columnas)

-- Tabla
SELECT * FROM Album;

SELECT TOP 5 * FROM Album;

SELECT TOP 10 * FROM Album;
-- Vistas
SELECT * FROM MediaType;

-- Columnas
SELECT * FROM Invoice;

SELECT
	BillingCity,
	BillingCountry
FROM Invoice;

-- 3. Límite de filas
SELECT TOP 25 * FROM Invoice;

SELECT TOP 25
	InvoiceId,
	CustomerId,
	BillingCity
FROM Invoice;

-- 4. Uso de alias
SELECT
	InvoiceId AS id_factura,
    CustomerId AS id_cliente,
    BillingCity AS ciudad_facturacion
FROM Invoice;

-- 5. Filtrar datos
SELECT * FROM Invoice
WHERE BillingCountry = 'Canada'; -- Quiero que salga canada

SELECT * FROM Invoice
WHERE BillingCountry != 'Canada'; -- No quiero que salga canada

SELECT * FROM Invoice
WHERE BillingCountry <> 'Canada'; -- No quiero que salga canada


