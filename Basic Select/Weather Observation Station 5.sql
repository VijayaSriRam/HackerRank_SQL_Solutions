'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-5/problem
Question      : Weather Observation Station 5
Difficulty    : Easy
Skills        : SQL (Intermediate)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Initial Approach:
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY), CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY
LIMIT 1;

--Time Complexity: O(n log n) {Full Table Scan - O(n) + Sorting - O(n log n) + Length - O(n) + Limit - O(1)}
--Space Complexity: O(1)

--2nd Appproach:
'''
Use of CTE and Window Functions for better performance.
'''
WITH LENGTHS AS (
    SELECT CITY, LENGTH(CITY) AS LEN,
           MIN(LENGTH(CITY)) OVER () AS MIN_LEN,
           MAX(LENGTH(CITY)) OVER () AS MAX_LEN
    FROM STATION
)
SELECT CITY, LEN
FROM LENGTHS
WHERE LEN IN (MIN_LEN, MAX_LEN)
ORDER BY LEN DESC, CITY
LIMIT 2;
