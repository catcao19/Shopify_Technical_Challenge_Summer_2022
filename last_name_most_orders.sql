/*
Question 2: For this question you’ll need to use SQL. Follow this link to
access the data set required for the challenge. Please use queries to answer
the following questions. Paste your queries along with your final numerical
answers below.
*/

-- b. What is the last name of the employee with the most orders?
-- used nested queries:
-- use parent query to find the last name of the Employees
-- use the inner query to find the employee with the most orders
-- we start from the inner query
SELECT Employees.LastName --fully qualified column names are needed to prevent any confusion
FROM Employees -- specify the table name
WHERE Employees.EmployeeID = 
  (SELECT Orders.EmployeeID -- fully qualified column names are needed to prevent any confusion
  FROM Orders -- specify the table name
  GROUP BY Orders.EmployeeID --break data into the smaller sets to find the number of orders submitted by each employee
  Order BY COUNT(Orders.EmployeeID) DESC --sort the number of orders in descending order
  LIMIT 1); --select one row only to find the employee with the most order

-- A: The last name of the employee with the most orders is Peacock.
