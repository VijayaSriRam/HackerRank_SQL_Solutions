'''
Question Link : https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
Question      : Revising the Select Query II
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT NAME
FROM CITY
WHERE (POPULATION > 120000) AND (COUNTRYCODE = 'USA');

--Time Complexity: O(n), where n is the number of rows in the CITY table.
--Space Complexity: O(m), where m is the size of the result set (no. of rows that match the conditions).

'''
Performance Tips:
Create an index on COUNTRYCODE for faster filtering
Create a composite index on (COUNTRYCODE, POPULATION) for optimal performance
'''