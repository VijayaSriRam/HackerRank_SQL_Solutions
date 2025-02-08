'''
Question Link : https://www.hackerrank.com/challenges/earnings-of-employees/problem
Question      : Top Earners
Difficulty    : Easy
Skills        : SQL (Basic)
Sub Domain    : Aggregation
Language Used : My SQL
'''

--My Initial Approach:
SELECT MAX(SALARY*MONTHS), COUNT(EMPLOYEE_ID)
FROM EMPLOYEE
WHERE ((SELECT MAX(SALARY*MONTHS)
        FROM EMPLOYEE)
       =
       (SALARY*MONTHS));

--Time Complexity: O(n), where n is the number of rows in the EMPLOYEE table.
--{Subqury scan - O(n), Main query - O(n), Aggregation - O(n)}
--Space Complexity: O(1)

'''
Can use a different approach by using the CTE\'s and comparing it against the main query.
But it\'s not a grat approach for smaller queries as above.
'''