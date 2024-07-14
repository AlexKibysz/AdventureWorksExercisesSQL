/*
19.
From the following table write a query in SQL to find the contacts

who are designated as a manager in various departments. 

Returns ContactTypeID, name.
Sort the result set in descending order.

Sample table: Person.ContactType
*/

--'%' is a wildcard character that matches any sequence of characters.
SELECT ContactTypeID, Name 
FROM Person.ContactType 
WHERE name LIKE '%manager%'
ORDER BY ContactTypeID DESC
