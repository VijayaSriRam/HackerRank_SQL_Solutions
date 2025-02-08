'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-2/problem
Question      : Weather Observation Station 2
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;

--Time Complexity: O(n)
--Space Complexity: O(1)