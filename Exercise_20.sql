/*
20. From the following tables write a query in SQL to make a 
list of contacts who are designated as
'Purchasing Manager'.

Return BusinessEntityID, LastName, and FirstName columns. 
Sort the result set in ascending order of LastName, and FirstName.

Sample table: Person.BusinessEntityContact
Sample table: Person.ContactType
Sample table: Person.Person
*/

SELECT pp.BusinessEntityID, LastName, FirstName FROM Person.BusinessEntityContact pb
INNER JOIN Person.ContactType pc ON pb.ContactTypeID = pc.ContactTypeID
INNER JOIN Person.Person pp ON pb.PersonID = pp.BusinessEntityID
WHERE pc.Name = 'Purchasing Manager'
ORDER BY LastName, FirstName
