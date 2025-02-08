'''
Question Link : https://www.hackerrank.com/challenges/population-density-difference/problem
Question      : Population Density Difference
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

--Time Complexity: O(n)
--Space Complexity: O(1)