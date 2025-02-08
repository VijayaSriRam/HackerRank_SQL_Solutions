'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-17/problem
Question      : Weather Observation Station 17
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N)
                FROM STATION
                WHERE LAT_N > 38.7780);


--Time Complexity: O(n)
--Space Complexity: O(1)