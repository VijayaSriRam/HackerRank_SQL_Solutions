'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-8/problem
Question      : Weather Observation Station 8
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Initial Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u') AND LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');

--Time Complexity: O(n log n) {Full Table Scan- O(n) + Distinct- O(n log n) + IN- O(1)}
--Space Complexity: O(k), where k is the number of unique cities satisfying the condition.

--2nd Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(CITY, '^[aeiou].*[aeiou]$', 'i');
