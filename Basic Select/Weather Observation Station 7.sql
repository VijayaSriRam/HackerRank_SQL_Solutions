'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-7/problem
Question      : Weather Observation Station 7
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Initial Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');

--Time Complexity: O(n log n) {Full Table Scan - O(n) + Distinct - O(n log n)}
--Space Complexity: O(k), k is the number of cities ending with vowels.

--2nd Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[AEIOU]$';