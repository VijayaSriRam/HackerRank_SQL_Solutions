'''
Question Link : https://www.hackerrank.com/challenges/full-score/problem
Question      : Top Competitors
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Basic Join
Language Used : My SQL
'''

-- My Initial Approach:
SELECT h.hacker_id, h.name
FROM Hackers h
JOIN (
    SELECT s.hacker_id, COUNT(DISTINCT s.challenge_id) as full_scores
    FROM Submissions s
    JOIN Challenges c ON s.challenge_id = c.challenge_id
    JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
    WHERE s.score = d.score
    GROUP BY s.hacker_id
    HAVING COUNT(DISTINCT s.challenge_id) > 1
) fs ON h.hacker_id = fs.hacker_id
ORDER BY fs.full_scores DESC, h.hacker_id;

--Time Complexity: O(n log n) {Join - O(n) + GROUP BY & Sorting & DISTINCT - O(n log n)}
--Space Complexity: O(m) - where m is the number of hackers who have more than one full score