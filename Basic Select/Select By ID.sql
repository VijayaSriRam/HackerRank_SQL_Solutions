'''
Question Link : https://www.hackerrank.com/challenges/select-by-id/problem
Question      : Select By ID
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT *
FROM CITY
WHERE ID = 1661;

--Time Complexity: O(1), if ID is the primary key with an index, or O(n) if ID is not indexed.
--Space Complexity: O(1), as it's a constant space for a single row