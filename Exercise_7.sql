/*7. From the following table write a query in SQL to calculate the
 total freight paid by each customer.
Return customerid and total freight. 
Sort the output in ascending order on customerid.

Sample table: sales.salesorderheader

*/

SELECT CustomerID, SUM(Freight) as TotalFreightPaid 
FROM sales.salesorderheader 
GROUP BY CustomerID 
ORDER BY CustomerID ASC