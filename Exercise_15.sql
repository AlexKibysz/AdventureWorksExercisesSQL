/*15.
From the following table write a query in SQL to find the total quantity
foreach locationid and calculate the grand-total for all locations.
Return locationid and total quantity. Group the results on locationid.

Sample table: production.productinventory
*/
--Intento 1
SELECT LocationID, SUM(Quantity) from production.productinventory
GROUP BY ROLLUP(LocationID)

--Nos da el resultado correcto de lo que se espera, pero la solucion es la siguiente

--Intento 2
/*
The GROUP BY clause groups the results using grouping sets.

GROUPING SETS ( locationid, () ) defines the grouping sets used for aggregation.
locationid groups the results by the location ID,
 providing subtotals for each location.
() represents an empty set,
 indicating that a grand total is also calculated across all rows.

This query generates
 subtotals for each location ID and an overall grand total across all locations.
*/

-- Selecting the location ID and the sum of quantity
SELECT locationid, SUM(quantity) AS TotalQuantity
-- Retrieving data from the 'productinventory' table
FROM production.productinventory
-- Grouping the results using grouping sets
GROUP BY GROUPING SETS ( locationid, () );
