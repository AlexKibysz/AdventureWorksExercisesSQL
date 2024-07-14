/*13. From the following table write a query in SQL to find the sum of the quantity of all combination of group of 
distinct locationid and shelf column. Return locationid, shelf and sum of quantity as TotalQuantity.
Sample table: production.productinventory
*/

--Intento 1
SELECT locationid, Shelf, SUM(Quantity) as TotalQuantity  
FROM production.productinventory
GROUP BY LocationID, Shelf

--Intento 2, se realiza con la funcion CUBE, esta nos indica varias cosas
--1. Cuanto es el total de Quantity para un LocationId
--2. Cuanto es el total de Quantity para cada Shelf
--3. Cuanto es el total de Quantity para las combinaciones 
--unicas de LocationId y Shelf
--4 el total de quantity
SELECT locationid, Shelf, SUM(Quantity) as TotalQuantity  
FROM production.productinventory
GROUP BY CUBE(LocationID, Shelf)


/*
SI ejecutamos la query podemos ver los siguiente

--1. Cuanto es el total de Quantity para un LocationId
locationid	Shelf	TotalQuantity
1	NULL	72899
2	NULL	5549
3	NULL	186
4	NULL	110
5	NULL	20295
6	NULL	83173
7	NULL	17319
10	NULL	13584
20	NULL	5165
30	NULL	958
40	NULL	508
45	NULL	332
50	NULL	95477
60	NULL	20419

--2
Cuanto es el total de Quantity para cada Shelf
locationid	Shelf	TotalQuantity
NULL	A	26833   
NULL	B	12672   
NULL	C	19868   
NULL	D	17353   
    ... ... ...     

--3. Cuanto es el total de Quantity para las combinaciones 
--unicas de LocationId y Shelf

locationid	Shelf	TotalQuantity
1	A	2727
3	A	186
4	A	110
5	A	6572
6	A	2734
10	A	1379
20	A	1680
50	A	10329
60	A	1116



--4 el total de quantity (ver query debajo para comprobar)
NULL	NULL	335974
SELECT SUM(Quantity) as TotalQuantity  
FROM production.productinventory

SELECT SUM(Quantity) as TotalQuantity  
FROM production.productinventory
*/

