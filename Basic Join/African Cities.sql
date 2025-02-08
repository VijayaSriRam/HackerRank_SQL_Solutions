'''
Question Link : https://www.hackerrank.com/challenges/african-cities/problem
Question      : African Cities
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Join
Language Used : My SQL
'''

SELECT C.NAME
FROM CITY C
JOIN COUNTRY Y ON C.COUNTRYCODE = Y.CODE
WHERE CONTINENT = 'AFRICA';

--Time Complexity: O(n * m), where n is the number of cities and m is the number of countries.
--Space Complexity: O(k), where k is the number of cities in Africa.