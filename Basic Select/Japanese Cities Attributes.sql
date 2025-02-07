'''
Question Link : https://www.hackerrank.com/challenges/select-by-id/problem
Question      : Japanese Cities Attributes
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--Time Complexity: O(n), where n is the number of rows in the CITY table.
--Space Complexity: O(k), where k is the number of Japanese cities multiplied by the number of columns.