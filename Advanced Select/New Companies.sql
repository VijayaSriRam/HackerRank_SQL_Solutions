'''
Question Link : https://www.hackerrank.com/challenges/the-company/problem
Question      : New Companies
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Advanced Select
Language Used : My SQL
'''

SELECT (C.company_code), (C.founder),
COUNT(DISTINCT(LM.lead_manager_code)),
COUNT(DISTINCT(SM.senior_manager_code)),
COUNT(DISTINCT(M.manager_code)),
COUNT(DISTINCT(E.employee_code))
FROM Company C
INNER JOIN Lead_Manager LM ON C.company_code = LM.company_code
INNER JOIN Senior_Manager SM ON C.company_code = SM.company_code
INNER JOIN Manager M ON C.company_code = M.company_code
INNER JOIN Employee E ON C.company_code = E.company_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code ASC;

--Time Complexity: O(n*5) Assuming n is the number of rows in the each table
--Space Complexity: O(n*5) Assuming n is the number of rows in the each table

'''
Alternative Solution:
    Instead of using INNER JOIN, we can use LEFT JOIN to get the same result.
    It better represents the hirearchial structure of the company.
'''