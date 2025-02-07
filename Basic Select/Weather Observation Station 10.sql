'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-10/problem
Question      : Weather Observation Station 10
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Intial Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

--Time Complexity: O(n) {Full table Scan - O(n) + DISTINCT - O(n log n) + REGEXP_LIKE - O(1)}
--Space Complexity: O(k), where k is the number of unique cities that doesn't start with a vowel.

--2nd Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE NOT REGEXP_LIKE(CITY, '[AEIOU]$', 'i');