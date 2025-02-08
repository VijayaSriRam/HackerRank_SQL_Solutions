'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-15/problem
Question      : Weather Observation Station 15
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N)
                FROM STATION
                WHERE LAT_N < 137.2345);


--Time Complexity: O(n)
--Space Complexity: O(1)