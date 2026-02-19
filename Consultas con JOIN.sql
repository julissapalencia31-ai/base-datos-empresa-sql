-- ##CONSULTAS CON INNER JOIN

-- 1. Mostrar todas las ventas con el nombre del cliente
SELECT s.quantity,  c.name FROM sales AS s
INNER JOIN customers As c
ON s.id_client= c.id_client

-- 2. Mostrar las ventas con el nombre del producto vendido
SELECT SUM(s.quantity) AS ventas, p.name_product AS producto_mas_vendido FROM sales AS s
INNER JOIN product AS P
ON s.id_product = p.id_product
GROUP BY p.name_product
ORDER BY ventas DESC LIMIT 1
-- 3. Mostrar: cliente, producto, cantidad y fecha de cada venta
SELECT c.name AS cliente, 
p.name_product AS producto, 
s.quantity AS cantidad, 
s.date AS fecha 
FROM sales AS s
INNER JOIN customers AS c
ON s.id_client= c.id_client
INNER JOIN product AS p
ON s.id_product= p.id_product

-- 4.Mostrar el total vendido por cliente
SELECT c.name, SUM(s.quantity) AS total_vendido FROM customers AS c
INNER JOIN sales AS s
ON c.id_client=s.id_client
GROUP BY c.name

--5. Mostrar el total vendido por producto
SELECT p.name_product, SUM(s.quantity) AS total_vendido 
FROM product AS p
INNER JOIN sales AS s
ON p.id_product=s.id_product
GROUP BY p.name_product

-- 6.Mostrar los productos vendidos más de 10 unidades en total
SELECT p.name_product, SUM(s.quantity) AS total_vendido 
FROM product AS p
INNER JOIN sales AS s
ON p.id_product=s.id_product
GROUP BY p.name_product
HAVING SUM(s.quantity) > 10

--7.Mostrar las ventas realizadas en mayo 2024 con nombre de cliente y producto
SELECT p.name_product AS Nombre_producto, c.name AS Cliente, s. quantity AS 'ventas_MAYO_2024' FROM sales AS s
INNER JOIN product AS p
ON p.id_product= s.id_product
INNER JOIN customers AS c
ON s.id_client= c.id_client
WHERE s.date >= '2024-05-01' AND s.date <= '2024-05-31'

-- ##CONSULTAS CON LEFT JOIN

--1. Mostrar todos los clientes aunque no hayan comprado nada
SELECT c.name AS nombre_cliente, s.quantity AS cantidad FROM customers AS c
LEFT JOIN sales AS s
ON c.id_client=s.id_client

