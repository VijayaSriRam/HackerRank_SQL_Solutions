'''
Question Link : https://www.hackerrank.com/challenges/name-of-employees/problem
Question      : Employee Names
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME;

--Time Complexity: O(n log n) {Full table scan - O(n) + Sorting - O(n log n)}
--Space Complexity: O(n), where n is the number of employees in the table.