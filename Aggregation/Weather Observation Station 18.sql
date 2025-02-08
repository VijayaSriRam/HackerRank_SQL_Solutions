'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-18/problem
Question      : Weather Observation Station 18
Difficulty    : Medium
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

--My Initial Approach:
WITH COORDINATES AS (
SELECT MIN(LAT_N) AS a, MIN(LONG_W) AS b, MAX(LAT_N) AS c, MAX(LONG_W) AS d
FROM STATION
)

SELECT ROUND(ABS(c-a) + ABS(d-b), 4)
FROM COORDINATES;

--Time Complexity: O(n) {n is the number of rows in the table, CTE - O(1)}
--Space Complexity: O(1)

--2nd Approach:
SELECT ROUND(
    ABS(MAX(LAT_N) - MIN(LAT_N)) + 
    ABS(MAX(LONG_W) - MIN(LONG_W)), 4)
FROM STATION;