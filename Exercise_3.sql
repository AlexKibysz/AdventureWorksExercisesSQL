/*3. From the following table write a query in SQL to return all rows and a subset of the columns 
(FirstName, LastName, businessentityid) from the person table in the AdventureWorks database.
The third column heading is renamed to Employee_id. 
Arranged the output in ascending order by lastname.*/

SELECT FirstName, LastName,BusinessEntityID as Employee_id FROM PERSON.Person order by LastName asc