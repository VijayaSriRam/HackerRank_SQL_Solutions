'''
Question Link : https://www.hackerrank.com/challenges/contest-leaderboard/problem
Question      : Contest Leaderboard
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Basic Join
Language Used : My SQL
'''

-- My Initial Approach: {Not Accepted. Issues with CTE's due to older MySQL version for this question}
WITH max_scores AS (
    SELECT S.hacker_id, S.challenge_id, MAX(S.score) AS max_score
    FROM Submissions S
    GROUP BY S.hacker_id, S.challenge_id
),
total_scores AS (
    SELECT MS.hacker_id, SUM(MS.max_score) AS total_score
    FROM max_scores MS
    GROUP BY MS.hacker_id
)
SELECT TS.hacker_id, H.name, TS.total_score
FROM total_scores TS
JOIN Hackers H ON TS.hacker_id = H.hacker_id
WHERE TS.total_score > 0
ORDER BY TS.total_score DESC, TS.hacker_id ASC;

--Time Complexity: O(n log n) {Group By - O(n log n) + Join - O(m log m) + Sorting - O(n log n)}
--Space Complexity: O(n)

--My 2nd Approach:
SELECT H.hacker_id, H.name, SUM(max_score) as total_score
FROM Hackers H
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) MS ON H.hacker_id = MS.hacker_id
GROUP BY H.hacker_id, H.name
HAVING SUM(max_score) > 0
ORDER BY total_score DESC, H.hacker_id ASC;