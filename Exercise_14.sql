/*14. From the following table write a query in SQL to find the sum of the quantity with subtotal for each locationid. 
Group the results for all combination of distinct locationid and shelf column. 
Rolls up the results into subtotal and running total.
 Return locationid, shelf and sum of quantity as TotalQuantity.
 
 Sample table: production.productinventory
 */

--INTENTO 1
SELECT DISTINCT LocationID, Shelf, SUM(Quantity) as TotalQuantity
FROM production.productinventory
GROUP BY ROLLUP(LocationID, Shelf)


--INTENTO 2 se que hacer un group by tanto de ROLLUP y CUBE con un Grouping set
/*
ROLLUP (locationid, shelf) generates subtotals for the combinations of location ID and shelf, 
as well as grand totals for each individual column and the overall total.

CUBE (locationid, shelf) produces a result set that includes super-aggregate rows,
 representing all combinations of specified columns along with grand totals and subtotals.

GROUP BY GROUPING SETS allows specifying multiple grouping sets in the same query,
 combining the results of ROLLUP and CUBE functions.

El grouping set nos ayuda a devolver los dos agrupamientos de ROLLUP y de CUBE para tener las dos cosas sin tener que hacer un union
 */

SELECT LocationID, Shelf, SUM(Quantity) as TotalQuantity
FROM production.productinventory
GROUP BY GROUPING SETS(ROLLUP(LocationID, Shelf), CUBE(locationID, Shelf));