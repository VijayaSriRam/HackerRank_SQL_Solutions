'''
Question Link : https://www.hackerrank.com/challenges/the-pads/problem
Question      : The PADS
Difficulty    : Medium
Skills        : SQL (Basic)
Sub Domain    : Advanced Select
Language Used : My SQL
'''

SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', LOWER(OCCUPATION), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION), OCCUPATION;

--#Query-1:
--Time Complexity: O(n log n) {Ordering - O(n log n) + Grouping - O(n)}
--Space Complexity: O(n + m) {Concatenation - O(n) + Grouping - O(m)}
