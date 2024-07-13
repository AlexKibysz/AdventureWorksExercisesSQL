/*2. From the following table write a query in SQL
to retrieve all rows and columns from the employee 
table using table aliasing in the Adventureworks database.
Sort the output in ascending order on lastname.*/

--table aliasing means: Imagina que tienes una consulta que involucra varias tablas,
--y cada una de ellas tiene nombres largos y descriptivos. 
--En lugar de escribir repetidamente esos nombres largos, puedes 
--asignar un alias (nombre corto) a cada tabla.
--En este ejemplo seria "emp"

SELECT e.* FROM person.Person as e order by LastName asc

/* Intento 1 
SELECT * FROM person.Person 
inner join HumanResources.Employee emp on emp.BusinessEntityID = person.BusinessEntityID
order by LastName asc
*/

/*SOLUCION*/
/*
-- Selecting all columns from the person table with an alias 'e'
SELECT e.*  
-- Ordering the result set by the LastName column in ascending order
FROM person.person AS e  
ORDER BY LastName;
*/