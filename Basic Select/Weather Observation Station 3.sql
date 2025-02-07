'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-3/problem
Question      : Weather Observation Station 3
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Approach:
SELECT DISTINCT(CITY)
FROM STATION
WHERE (ID % 2 = 0);

--Time Complexity: O(n log n) {Full Table Scan - O(n) + DISTINCT - O(n log n) + Modulo Operation - O(n)}
--Space Complexity: O(k), k is the number of distinct cities which are even numbered.

--Alternate Approach:
SELECT CITY
FROM STATION
WHERE (ID & 1) = 0
GROUP BY CITY;
