'''
Question Link : https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
Question      : Average Population
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT FLOOR(AVG(POPULATION))
FROM CITY;

--Time Complexity: O(n), where n is the number of rows in the CITY table.
--Space Complexity: O(1)