'''
Question Link : https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
Question      : Average Population of Each Continent
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Join
Language Used : My SQL
'''

SELECT Y.CONTINENT, FLOOR(AVG(C.POPULATION))
FROM CITY C
JOIN COUNTRY Y ON C.COUNTRYCODE = Y.CODE
GROUP BY Y.CONTINENT;

--Time Complexity: O(n*m + k log k) {Join Rows - (n * m) + Continents - k + Group By & Average - (k log k)}
--Space Complexity: O(k), where k is the number of continents.