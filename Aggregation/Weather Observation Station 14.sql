'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-14/problem
Question      : Weather Observation Station 14
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;

--Time Complexity: O(n)
--Space Complexity: O(1)