/*
8. From the following table write a query in SQL to find 
the average and the sum of the subtotal for every customer. 
Return customerid, average and sum of the subtotal. 
Grouped the result on customerid and salespersonid. 
Sort the result on customerid column in descending order.

Sample table: sales.salesorderheader
*/

SELECT  Sales.CustomerID, SalesPersonID,  AVG(SubTotal * 1.00) as averageSubTotal, SUM(SubTotal * 1.00) as SumOfSubtotal
FROM sales.SalesOrderHeader as Sales
GROUP BY CustomerID , SalesPersonID
ORDER BY CustomerID DESC 

--Esta query nos permite hacer un grupo compuesto por una unica combinacion de cliente y vendedor
--de esta forma se hace un SUM y AVG del Subtotal para esta unica combinacion mirando todos las ventas que se hicieron
-- por ejemplo entre el vendedor 1 y el cliente 33