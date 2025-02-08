'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-6/problem
Question      : Weather Observation Station 6
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

--My Initial Approach: (My SQL)
SELECT DISTINCT(CITY)
FROM STATION
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';

--Time Complexity: O(n log n), where n is the number of rows in the table.
--Space Complexity: O(k), where k is the number of cities starting with vowels.

--2nd Approach:
SELECT DISTINCT(CITY)
FROM STATION
WHERE LOWER(LEFT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');

--3rd Approach:
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(CITY, '^[aeiou]', 'i');

'''
Key Learning:
REGEXP is a keyword used in SQL queries to match a string with a regular expression pattern. It is case sensitive.
'''