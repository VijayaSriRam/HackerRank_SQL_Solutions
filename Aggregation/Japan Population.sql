'''
Question Link : https://www.hackerrank.com/challenges/japan-population/problem
Question      : Japan Population
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--Time Complexity: O(n)
--Space Complexity: O(1)