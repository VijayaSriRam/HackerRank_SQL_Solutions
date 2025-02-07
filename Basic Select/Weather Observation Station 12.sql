'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-12/problem
Question      : Weather Observation Station 12
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Initial Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') 
AND LOWER(RIGHT(CITY, 1)) NOT IN ('a', 'e', 'i', 'o', 'u');

--Time Complexity: O(n log n) {Full Table Scan- O(n) + Distinct- O(n log n) + NOT IN - O(1)}.
--Space Complexity: O(k), where k is the number of distinct cities in the table.

--2nd Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE NOT REGEXP_LIKE(CITY, '^[aeiou]|[aeiou]$', 'i');
