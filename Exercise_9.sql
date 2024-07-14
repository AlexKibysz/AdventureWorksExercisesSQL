/*

9. From the following table write a query in SQL to retrieve total quantity of each productid which are in shelf of 'A' or 'C' or 'H'. Filter the results for sum quantity is more than 500. Return productid and sum of the quantity. Sort the results according to the productid in ascending order.

Sample table: production.productinventory
*/

--Intento 1
SELECT ProductID, SUM(Quantity) as total_quantity FROM production.productinventory AS Products
WHERE Shelf in ('A', 'C', 'H') 
GROUP BY ProductID
HAVING SUM(Quantity) > 500
ORDER BY ProductID ASC
--esta Ok pero hace ruido en SUM(Quantity)
--Hay otras formas de hacerlo pero son menos optimas como un subquery o con CTE 

