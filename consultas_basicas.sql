-- TechStore - Consultas Básicas SELECT
-- Autor: Fernanda Adamo
-- Fecha: 14/08/2026


-- SECCION DDL

-- Creación de base de datos
CREATE DATABASE TechStore_DB;

-- Migración a base de datos TechStore_DB
USE TechStore_DB;

-- Dropeo tabla de referencia
DROP TABLE IF EXISTS sales;

-- Creación de tabla sales
CREATE TABLE sales (
order_id INT IDENTITY(1001,1) PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INT NOT NULL,
product_id INT NOT NULL,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL,
quantity INT DEFAULT 0,
unit_price DECIMAL (10,2),
total_amount DECIMAL (10,2)
);


-- SECCION DML

-- Inserción datos sales
INSERT INTO sales
VALUES
('2024-01-05', 201, 301, 'Laptop Pro 15', 'Computación', 2, 1200.00, 2400.00),
('2024-01-08', 202, 302, 'Mouse Inalámbrico', 'Accesorios', 5, 28.00, 140.00),
('2024-01-12', 203, 303, 'Monitor 4K 27"', 'Computación', 1, 450.00, 450.00),
('2024-01-15', 201, 304, 'Teclado Mecánico', 'Accesorios', 3, 95.00, 285.00),
('2024-02-03', 204, 305, 'Auriculares BT Pro', 'Audio', 2, 120.00, 240.00),
('2024-02-10', 202, 301, 'Laptop Pro 15', 'Computación', 1, 1200.00, 1200.00),
('2024-02-18', 205, 306, 'SSD Externo 1TB', 'Almacenamiento', 3, 130.00, 390.00),
('2024-03-05', 203, 302, 'Mouse Inalámbrico', 'Accesorios', 8, 28.00, 224.00),
('2024-03-12', 204, 303, 'Monitor 4K 27"', 'Computación', 2, 450.00, 900.00),
('2024-03-20', 205, 304, 'Teclado Mecánico', 'Accesorios', 4, 95.00, 380.00);

-- Consulta 1: Exploración general de la tabla sales
SELECT * FROM sales;

-- Consulta 2: Selección de columnas específicas para finanzas
SELECT customer_id, product_id, total_amount
FROM sales;

-- Consultas 3: Selección con alias en español para stakeholders
SELECT
order_date AS fecha_pedido,
product_name AS nombre_producto,
quantity AS cantidad_unidades
FROM sales;