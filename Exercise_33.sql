/*
33. From the following table write a query in SQL to set the result in order by 
the column TerritoryName when the column CountryRegionName is equal to
 'United States' and by CountryRegionName for all other rows.


*/



SELECT BusinessEntityID, LastName, TerritoryName, CountryRegionName  
FROM Sales.vSalesPerson  
WHERE TerritoryName IS NOT NULL  
ORDER BY CASE CountryRegionName WHEN 'United States' THEN TerritoryName  
         ELSE CountryRegionName END;