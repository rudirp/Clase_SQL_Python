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
