'''
Question Link : https://www.hackerrank.com/challenges/what-type-of-triangle/problem
Question      : Type of Triangle
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Advanced Select
Language Used : My SQL
'''

SELECT 
CASE 
    WHEN NOT (A+B>C AND B+C>A AND A+C>B) THEN 'Not A Triangle'
    WHEN (A=B AND B=C AND C=A) THEN 'Equilateral'
    WHEN (A=B OR B=C OR C=A) THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES;

--Time Complexity: O(n), where n is the number of rows in the table.
--Space Complexity: O(n), where n is the number of output rows.

'''
Key Learning:
Use of CASE Statement to evaluate conditions using WHEN ELSE and END
'''