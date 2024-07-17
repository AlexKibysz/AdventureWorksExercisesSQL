/*25. From the following table write a query in SQL to find the sum,
 average, count, minimum, and maximum order quentity for those orders
  whose id are 43659 and 43664.
  
   Return SalesOrderID, ProductID, OrderQty, sum, average, count, max, and min order quantity.
   
   Sample table: Sales.SalesOrderDetail
salesorderid|salesorderdetailid|carriertrackingnumber|orderqty|productid|specialofferid|unitprice|unitpricediscount|rowguid                             |modifieddate           |
------------+------------------+---------------------+--------+---------+--------------+---------+-----------------+------------------------------------+-----------------------+
       43659|                 1|4911-403C-98         |       1|      776|             1| 2024.994|                0|b207c96d-d9e6-402b-8470-2cc176c42283|2011-05-31 00:00:00.000|
       43659|                 2|4911-403C-98         |       3|      777|             1| 2024.994|                0|7abb600d-1e77-41be-9fe5-b9142cfc08fa|2011-05-31 00:00:00.000|
       43659|                 3|4911-403C-98         |       1|      778|             1| 2024.994|                0|475cf8c6-49f6-486e-b0ad-afc6a50cdd2f|2011-05-31 00:00:00.000|
       43659|                 4|4911-403C-98         |       1|      771|             1| 2039.994|                0|04c4de91-5815-45d6-8670-f462719fbce3|2011-05-31 00:00:00.000|
       43659|                 5|4911-403C-98         |       1|      772|             1| 2039.994|         
   */

SELECT
    SalesOrderID,
    ProductID, 
    OrderQty,
    SUM(OrderQty) over WIN as total_quantity, 
    AVG(OrderQty) over WIN AS AVG_QUANTITY, 
    COUNT(OrderQty) over WIN AS ORDERS_COUNT, 
    MAX(OrderQty) over WIN AS MAX_QUANTITY, 
    MIN(OrderQty) over WIN AS MIN_QUANTITY 
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN ('43659','43664')
WINDOW WIN AS (PARTITION BY SalesOrderID) 