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

-- 6.Filtro de texto:  Wildcard (%) - Busqueda de texto

SELECT * FROM Track
WHERE Composer = 'Tony'; -- Busqueda un texto exacto

-- a. Inicio del texto
SELECT * FROM Track
WHERE Composer LIKE 'Tony%'; -- Texto a la izquierda puede ser cualquier cosa

-- b. Final del texto
SELECT * FROM Track
WHERE Composer LIKE '%Tony'; -- Texto a la derecha puede ser cualquier cosa

-- c. En el texto
SELECT * FROM Track
WHERE Composer LIKE '%Tony%'; -- Texto a la derecha o izquierda puede ser cualquier cosa

-- d. And 
SELECT * FROM Track
WHERE Composer LIKE '%Tony%'AND Composer LIKE '%Ozzy%'; -- Las 2 condiciones se tiene que cumplir

-- d. OR  
SELECT * FROM Track
WHERE Composer LIKE '%Tony%' OR Composer LIKE '%Ozzy%'; -- Basta que 1 condición se cumpla



-- 7. Ordenar datos
-- ASC (Ascendente): Menor a mayor
-- DESC (Descendente): Mayor a menor


-- 8. Condicionales




-- 9. Agregaciones y agrupaciones


