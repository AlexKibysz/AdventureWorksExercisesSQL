/*
11. From the following tables write a query in SQL
 to find the persons whose last name starts with letter 'L'. 
 Return BusinessEntityID, FirstName, LastName, and PhoneNumber. 
 Sort the result on lastname and firstname.
 
 Sample table: Person.PersonPhone
 */

SELECT phone.BusinessEntityID as ID, FirstName, LastName, PhoneNumber FROM Person.PersonPhone AS phone
inner join Person.Person as person ON phone.BusinessEntityID = person.BusinessEntityID AND SUBSTRING(person.LastName,1, 1) = 'L' 
order by LastName, FirstName 
 


