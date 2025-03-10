Project: Retrieve Data using Single-Table SQL Queries


-- SELECT * from employee: retrieve all columns and rows from a specified table in the database

-- Projection Query: Select specific columns

SELECT emplastname, empfirstname, empsalary
FROM employee;


-- ORDER BY Clause: Sort query results by a column:

SELECT empfirstname, emplastname, empsalary (swtiched first and last name by copying/pasting)
FROM employee
ORDER BY empsalary desc  <---by highest salary first-desc) 

SELECT empdeptid, empfirstname, emplastname, empsalary
FROM employee
ORDER BY empdeptid, empsalary desc <--- then performed a major sort then a minor sort) 

-- ORDER BY clause and WHERE Clause: 

SELECT empdeptid, empfirstname, emplastname
FROM employee
WHERE empdeptid = 300 <--- using a comparison operator
ORDER BY empdeptid  <---list of employees listed by the IT dept

SELECT empdeptid, empfirstname, emplastname
FROM employee
WHERE empdeptid = 300 and empsalary > 200000  <---- used AND logical conjunction and comparison operators
ORDER BY empdeptid 


Scenario - The president of Curryco is interested in the range of salaries paid to employees. 
           He'd like a list of employee names, salaries, and department IDs for any employee
           who make more than $225,000.

SELECT empdeptid, empsalary, empfirstname, emplastname
FROM employee
WHERE empsalary < 75000 or empsalary > 225000
ORDER BY empsalary 

Scenario -  A list of employees who work in the Barrow building is needed.
            They should be sorted by employee last name within department.

SELECT empdeptid, empfirstname, emplastname
FROM employee 
WHERE empdeptid in (200, 220, 500, 520)
ORDER BY empdeptid, emplastname

Scenario - The president of Curryco would lke a list of th department Ids, hire dates,
last names, first names, and job titles of all employees who are Directors.
Employees should be listed in order by last name within department.

SELECT empdeptid, emphiredate, emplastname, empfirstname, emptitle
FROM employee
WHERE emptitle = 'Director' <--- data values need to be exact
ORDER BY empdeptid desc