/*6. From the following table write a query in SQL to create a list of unique jobtitles in the employee table in Adventureworks database. 
Return jobtitle column and arranged the resultset in ascending order.

HumanResources.Employee
*/

SELECT DISTINCT JobTitle 
FROM HumanResources.Employee 
ORDER BY JobTitle asc