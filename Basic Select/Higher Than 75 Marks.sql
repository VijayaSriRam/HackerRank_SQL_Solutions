'''
Question Link : https://www.hackerrank.com/challenges/more-than-75-marks/problem
Question      : Higher Than 75 Marks
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID ASC;

--Time Complexity: O(n log n) {Full Table Scan - O(n) + Sorting - O(n log n)}
--Space Complexity: O(k), where k is the number of students with marks > 75.

'''
Alternative Solution:
ORDER BY SUBSTRING(NAME, -3), ID ASC;
-- SUBSTRING() is more versatile as it can extract substrings from any position in the string
'''