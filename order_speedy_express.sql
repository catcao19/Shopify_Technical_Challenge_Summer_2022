/*
Question 2: For this question you’ll need to use SQL. Follow this link to
access the data set required for the challenge. Please use queries to answer
the following questions. Paste your queries along with your final numerical
answers below.
*/

-- a. How many orders were shipped by Speedy Express in total?
SELECT COUNT(*) --returns the number of rows
FROM Orders INNER JOIN Shippers ON -- use explicit equi-join associate two tables into a single table
Orders.ShipperID = Shippers.ShipperID -- join based on eqaulity between values in common columns
WHERE ShipperName = 'Speedy Express'; -- use WHERE clause as a filter

-- A: 54 orders were shipped by the Speedy Express in total.
