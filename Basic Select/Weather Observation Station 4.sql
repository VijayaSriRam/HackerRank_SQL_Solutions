'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-4/problem
Question      : Weather Observation Station 4
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT (COUNT(CITY) - COUNT(DISTINCT(CITY)))
FROM STATION;

--Time Complexity: O(n) {Full Table Scan - O(n) + COUNT(DISTINCT(CITY)) - O(n)}
--Space Complexity: O(k), k is the number of distinct cities.