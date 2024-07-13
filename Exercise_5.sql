/*5. From the following table write a query in SQL to return all rows from the salesorderheader table in Adventureworks database
and calculate the percentage of tax on the subtotal have decided. 
Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. 
Arranged the result set in ascending order on subtotal.*/

SELECT SalesOrderID,
CustomerID, 
OrderDate, 
SubTotal, 
(TaxAmt * 100.00) /SubTotal * 1.00 as percentageOfTax 

FROM Sales.SalesOrderHeader 
ORDER BY SubTotal DESC