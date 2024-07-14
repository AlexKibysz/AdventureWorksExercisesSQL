/*
18.
From the following table write a query in SQL to retrieve the total sales for
each year. Filter the result set for those orders where order year is on or before 2016.
  Return the year part of orderdate and total due amount. 
  Sort the result in ascending order on year part of order date.
  

  Sample table: Sales.SalesOrderHeader
  */
--Intento 1
SELECT YEAR(OrderDate), SUM(TotalDue)
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) <= '2016'
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate) ASC