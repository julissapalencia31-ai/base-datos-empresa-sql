--Ejercicio SQL
--======================================================

--1.Mostrar todos los productos ordenados por precio de mayor a menor.
SELECT name_product, price FROM product ORDER BY price DESC 

--2.Obtener los nombres de clientes que sean de México.
SELECT name FROM customers WHERE country ='México'

--3.Mostrar los empleados que ganen más de 20,000.
SELECT salary FROM employee WHERE salary > 20000

--4.Mostrar las categorías de productos sin repetir.
SELECT DISTINCT category FROM product

--5.Obtener los 5 productos más caros.
SELECT price FROM product ORDER BY price DESC LIMIT 5

--6.Mostrar productos cuyo nombre contenga la palabra "Laptop".
SELECT name_product FROM product
WHERE name_product LIKE '%Laptop%'

--7. Mostrar empleados que NO trabajen en el departamento IT.
SELECT name, department FROM employee 
WHERE department NOT IN ('IT')

--8.Mostrar productos cuyo stock esté entre 10 y 50.
SELECT stock FROM product WHERE stock <50 AND stock >10

--9.Mostrar ventas donde la cantidad sea mayor a 5.
SELECT quantity FROM sales WHERE quantity >5

--10.Mostrar clientes que estén en México o USA.
SELECT country FROM customers 
WHERE country ='Mexico' OR country ='USA'

--11.Mostrar el salario promedio de todos los empleados.
SELECT AVG(salary) FROM employee

--12.Mostrar el salario promedio por departamento.
SELECT department, AVG(salary) AS promedio_depto FROM employee 
GROUP BY department

--13.Mostrar cuántos empleados hay por departamento.
SELECT  department, COUNT(*) AS total_empleados FROM employee
GROUP BY department

--14.Mostrar la cantidad total vendida por producto.
SELECT id_product, SUM(quantity) AS suma_catidades FROM sales 
GROUP BY id_product ORDER BY id_product ASC

--15.Mostrar el total de unidades vendidas en toda la empresa.
SELECT SUM(quantity) FROM sales

--16.Mostrar los departamentos cuyo salario promedio sea mayor a 18,000.
SELECT department, AVG(salary) FROM employee 
GROUP BY department HAVING AVG(salary)>18000 
