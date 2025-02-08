'''
Question Link : https://www.hackerrank.com/challenges/the-blunder/problem
Question      : The Blunder
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY, '0', '')))
FROM EMPLOYEES;

--Time Complexity: O(n), where n is the number of rows in the EMPLOYEES table.
--Space Complexity: O(1), as we only store aggregate values.

'''
Key Learning:
Use of CEIL function to round up the average salary.
Use of REPLACE function to remove the "0" from the salary.
'''