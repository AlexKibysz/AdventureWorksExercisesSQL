/*
22. From the following table write a query in SQL
 to count the number of contacts for combination of each type and name.
 Filter the output for those who have 100 or more contacts. 
 Return ContactTypeID and ContactTypeName and BusinessEntityContact. 
 Sort the result set in descending order on number of contacts.


Sample table: Person.BusinessEntityContact

businessentityid|personid|contacttypeid|rowguid                             |modifieddate           |
----------------+--------+-------------+------------------------------------+-----------------------+
             292|     291|           11|7d4d2dbc-4a44-48f5-911d-a63abafd5120|2017-12-13 13:21:02.243|
             294|     293|           11|3ea25b65-9579-4260-977d-d6f00d7d20ee|2017-12-13 13:21:02.320|
             296|     295|           11|dadac1ff-3351-4827-9ae0-95004885c193|2017-12-13 13:21:02.383|
             298|     297|           11|b924f26f-6446-45d1-a92b-6f418374f075|2017-12-13 13:21:02.447|
             300|     299|           11|5ba4e7be-8d29-46a2-b68d-67b1615b124a|2017-12-13 13:21:02.510|
             302|     301|           11|6cc8f248-8d96-4afd-adcc-61d93e8de3b1|2017-12-13 13:21:02.570|
             304|     303|           11|33b4da81-4448-481f-bf7c-357ea4d23f21|2017-12-13 13:21:02.633|
             306|     305|           11|70d35526-7c2f-470f-98cb-f9299a754f16|2017-12-13 13:21:02.697|
             308|     307|           14|da33b75d-32fb-432d-a275-9e9d32e78f3e|2017-12-13 13:21:02.760|
             310|     309|           14|c2dee145-a902-477e-ab21-29659ac3e97e|2017-12-13 13:21:02.820|
             312|     311|           14|4020deae-56f6-47df-96c1-a01f3de2305c|2017-12-13 13:21:02.883|
             314|     313|           14|9ef858de-eaba-4a53-9b28-fc699d789957|2017-12-13 13:21:02.930|
			 -- more --


Sample table: Person.ContactType
contacttypeid|name                           |modifieddate           |
-------------+-------------------------------+-----------------------+
            1|Accounting Manager             |2008-04-30 00:00:00.000|
            2|Assistant Sales Agent          |2008-04-30 00:00:00.000|
            3|Assistant Sales Representative |2008-04-30 00:00:00.000|
            4|Coordinator Foreign Markets    |2008-04-30 00:00:00.000|
            5|Export Administrator           |2008-04-30 00:00:00.000|
            6|International Marketing Manager|2008-04-30 00:00:00.000|
            7|Marketing Assistant            |2008-04-30 00:00:00.000|
            8|Marketing Manager              |2008-04-30 00:00:00.000|
            9|Marketing Representative       |2008-04-30 00:00:00.000|
           10|Order Administrator            |2008-04-30 00:00:00.000|
           11|Owner                          |2008-04-30 00:00:00.000|
           12|Owner/Marketing Assistant      |2008-04-30 00:00:00.000|
		   -- more --


*/
SELECT PB.ContactTypeID, PC.Name as 'ContactTypeName', COUNT(*) FROM Person.BusinessEntityContact PB
INNER JOIN Person.ContactType PC on PB.ContactTypeID = PC.ContactTypeID
GROUP BY PB.ContactTypeID, PC.Name
HAVING COUNT(*) >= 100
ORDER BY COUNT(*) DESC

