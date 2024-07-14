/*
17. From the following table write a query in SQL 
to retrieve the total sales for each year.
Return the year part of order date and total due amount.
Sort the result in ascending order on year part of order date.

Sample table: Sales.SalesOrderHeader
*/

--INTENTO 1 por inercia se me dio usar YEAR suponiendo que era un tipo de dato DATETIME
--SELECT OrderDate FROM Sales.SalesOrderHeader
-- 2011-05-31 00:00:00.000 datetime necesitamos sacar el año nomas
SELECT YEAR(OrderDate), SUM(TotalDue) as Total_Due_Ammount_By_Year
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate) 