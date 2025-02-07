'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-11/problem
Question      : Weather Observation Station 11
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Initial Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE NOT REGEXP_LIKE(CITY, '^[aeiou]', 'i')
   OR NOT REGEXP_LIKE(CITY, '[aeiou]$', 'i');

--Time Complexity: O(n log n) {Full table Scan - O(n) + DISTINCT - O(n log n) + REGEXP_LIKE - O(m)}
--Space Complexity: O(k), where k is the number of unique cities that match the condition

--2nd Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE NOT REGEXP_LIKE(CITY, '^[aeiou].*[aeiou]$', 'i');
