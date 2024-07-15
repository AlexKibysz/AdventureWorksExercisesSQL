/*
21. From the following tables write a query in SQL to retrieve
 the salesperson for each PostalCode who belongs to a territory and SalesYTD is not zero. 
Return row numbers of each group of PostalCode, last name, salesytd,
postalcode column. Sort the salesytd of each postalcode group in descending order. 
Shorts the postalcode in ascending order.

Sample table: Sales.SalesPerson
*/

-- Selecting row numbers, last names, sales year-to-date, and postal codes from multiple tables with window function usage
SELECT 
    ROW_NUMBER() OVER win AS "ROW #",
    pp.LastName, 
    sp.SalesYTD, 
    pa.PostalCode
FROM Sales.SalesPerson AS sp
    INNER JOIN Person.Person AS pp
        ON sp.BusinessEntityID = pp.BusinessEntityID
    INNER JOIN Person.Address AS pa
        ON pa.AddressID = pp.BusinessEntityID
WHERE TerritoryID IS NOT NULL
    AND SalesYTD <> 0
WINDOW win AS (PARTITION BY PostalCode ORDER BY SalesYTD DESC)
ORDER BY PostalCode;
