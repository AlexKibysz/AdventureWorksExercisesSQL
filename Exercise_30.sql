/*30. From the following table write a query in SQL to retrieve records of employees.
 Order the output on year (default ascending order) of hiredate.
  Return BusinessEntityID, JobTitle, and HireDate.


Sample table: HumanResources.Employee

*/

SELECT BusinessEntityID, JobTitle, HireDate FROM HumanResources.Employee
ORDER BY YEAR(HireDate) ASC

