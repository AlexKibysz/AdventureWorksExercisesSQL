/*

10. From the following table write a query in SQL to find the total quentity for a group of locationid multiplied by 10.

Sample table: production.productinventory

*/

--Intento 1, claramente no es
SELECT COUNT(Quantity) 
FROM production.productinventory as products
GROUP BY LocationID

--Intento 2, al parecer no es un Count sino un SUM 
--y especifica que un grupo de locationId multiplicado por 10
SELECT (LocationID * 10),SUM(products.Quantity) 
FROM production.productinventory as products
GROUP BY (LocationID * 10)
ORDER BY  (LocationID * 10)  asc

--se me hizo rara la solucion por que esta query retorna los mismos valores??
SELECT SUM(Quantity)
FROM production.productinventory as products
GROUP BY LocationID
