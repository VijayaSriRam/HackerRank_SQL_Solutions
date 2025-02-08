'''
Question Link : https://www.hackerrank.com/challenges/asian-population/problem
Question      : Population Census
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Join
Language Used : My SQL
'''

SELECT SUM(C.POPULATION)
FROM CITY C
INNER JOIN COUNTRY Y ON C.COUNTRYCODE = Y.CODE
WHERE CONTINENT = 'ASIA';

--Time Complexity: O(n * m), where n is the number of rows in the CITY table and m is the number of rows in the COUNTRY table.
--Space Complexity: O(1)