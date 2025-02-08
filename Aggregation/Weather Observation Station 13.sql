'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-13/problem
Question      : Weather Observation Station 13
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE 38.7880 < LAT_N AND LAT_N < 137.2345;

--Time Complexity: O(n)
--Space Complexity: O(1)