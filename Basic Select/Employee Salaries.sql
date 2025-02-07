'''
Question Link : https://www.hackerrank.com/challenges/salary-of-employees/problem
Question      : Employee Salaries
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT NAME
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC;

--Time Complexity: O(n log n) {Full table scan - O(n) + Sorting - O(n log n)}
--Space Complexity: O(k), where k is the number of employees meeting both conditions.