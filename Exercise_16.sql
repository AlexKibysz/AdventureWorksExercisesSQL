/*
16.
From the following table write a query in SQL to retrieve
the number of employees for each City.
Return city and number of employees.
Sort the result in ascending order on city.
    
Sample table: Person.BusinessEntityAddress
*/

--Intento 1
SELECT Dir.City, COUNT(BussEnt.BusinessEntityID) 
FROM Person.BusinessEntityAddress BussEnt
INNER JOIN Person.Address Dir on Dir.AddressID = BussEnt.AddressID
GROUP BY City 
ORDER BY City ASC
