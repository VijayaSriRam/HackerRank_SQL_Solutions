'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-16/problem
Question      : Weather Observation Station 16
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780;

--Time Complexity: O(n)
--Space Complexity: O(1)