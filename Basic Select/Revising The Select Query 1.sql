'''
Question Link : https://www.hackerrank.com/challenges/revising-the-select-query/problem
Question      : Revising the Select Query I
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Basic Select
Language Used : My SQL
'''

SELECT *
FROM CITY
WHERE (POPULATION > 100000) AND (COUNTRYCODE = 'USA');

--Time Complexity: O(n), where n is the number of rows in the CITY table.
--Space Complexity: O(m), where m is the size of the result set (no. of rows that match the conditions).

'''
Performance Tips:
Create an index on COUNTRYCODE column for faster filtering
Create a composite index on (COUNTRYCODE, POPULATION) for even better performance
'''