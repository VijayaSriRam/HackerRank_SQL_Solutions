'''
Question Link : https://www.hackerrank.com/challenges/weather-observation-station-20/problem
Question      : Weather Observation Station 20
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Aggregation
Language Used : My SQL
'''

WITH ordered_lats AS (
    SELECT LAT_N,
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
           COUNT(*) OVER () AS total_count
    FROM STATION
)

SELECT ROUND(
    CASE 
        WHEN MOD(total_count, 2) = 1 THEN 
            (SELECT LAT_N FROM ordered_lats WHERE rn = (total_count + 1)/2)
        ELSE 
            (SELECT AVG(LAT_N) FROM ordered_lats WHERE rn IN (total_count/2, total_count/2 + 1))
    END, 4) AS median
FROM ordered_lats
LIMIT 1;

--Time Complexity: O(n log n) {Sorting - O(n log n) + Window Function - O(n) + CASE - O(1)}
--Space Complexity: O(n) {Window Function - O(n)}