/*
Question 2: For this question you’ll need to use SQL. Follow this link to
access the data set required for the challenge. Please use queries to answer
the following questions. Paste your queries along with your final numerical
answers below.
*/

--c. What product was ordered the most by customers in Germany?
SELECT Products.ProductName --Specify what product it is
FROM Customers, Orders, OrderDetails, Products -- use implicit Equi-join to join the four tables into one table
WHERE Customers.CustomerID = Orders.CustomerID -- join based on equality between values in common columns
AND Orders.OrderID = OrderDetails.OrderID
AND OrderDetails.ProductID = Products.ProductID
AND country = 'Germany' -- specify the country as 'Germany' as a filter
GROUP BY Products.ProductName -- break data into smaller datasets by ProductName
ORDER BY SUM(Quantity) DESC -- sorts the smallerdatasets into descending order
LIMIT 1; -- select row with the most quantity

--A: Boston Crab Meat was ordered the most by customers in Germany
