'''
Question Link : https://www.hackerrank.com/challenges/japanese-cities-name/problem
Question      : Japanese Cities Names
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

--Time Complexity: O(n), where n is the number of rows in the CITY table.
--Space Complexity: O(k), where k is the number of Japanese cities.