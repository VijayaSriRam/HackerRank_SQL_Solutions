'''
Question Link : https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
Question      : Revising Aggregations - The Count Function
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;

--Time Complexity: O(n), where n is the number of rows in the CITY table.
--Space Complexity: O(1)