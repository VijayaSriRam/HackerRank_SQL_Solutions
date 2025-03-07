'''
Question Link : https://www.hackerrank.com/challenges/the-report/problem
Question      : The Report
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Basic Join
Language Used : My SQL
'''

WITH StudentGrades AS (
    SELECT 
        CASE WHEN G.Grade >= 8 THEN S.Name ELSE NULL END AS Name,
        G.Grade,
        S.Marks
    FROM Students S
    JOIN Grades G ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
)
SELECT Name, Grade, Marks
FROM StudentGrades
ORDER BY 
    Grade DESC,
    CASE WHEN Grade >= 8 THEN Name ELSE NULL END,
    CASE WHEN Grade < 8 THEN Marks ELSE NULL END;

--Time Complexity: O(n log n) {JOIN - O(n) + Sorting - O(n log n) + CASE - O(n)}
--Space Complexity: O(n)