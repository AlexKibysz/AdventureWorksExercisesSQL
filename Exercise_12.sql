/*
12.
From the following table write a query in SQL to find the sum of subtotal column.
Group the sum on distinct salespersonid and 
customerid. Rolls up the results into subtotal and running total. 
Return salespersonid, customerid and sum of subtotal column i.e. sum_subtotal.

Sample table: sales.salesorderheader
*/

--Intento 1 no cumple la condicion
SELECT SalesPersonID, customerid, SUM(SubTotal) as sum_subtotal 
FROM sales.salesorderheader where SalesPersonID is not null
GROUP BY SalesPersonID, CustomerID


--Intento 2 para esto se usa la funcion ROLLUP lo que hace es que nos crea una sumatoria de los subtotales por customerId y SalesPersonID
SELECT SalesPersonID, customerid, SUM(SubTotal) as sum_subtotal 
FROM sales.salesorderheader where SalesPersonID is not null
GROUP BY ROLLUP(SalesPersonID, CustomerID) 


