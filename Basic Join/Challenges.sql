'''
Question Link : https://www.hackerrank.com/challenges/challenges/problem
Question      : Challenges
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Basic Join
Language Used : My SQL
'''

--My 1st Approach:
WITH tot_chall AS (
    SELECT C.hacker_id, COUNT(C.challenge_id) AS Tot_Chal
    FROM Challenges C
    GROUP BY C.hacker_id
),
max_chal_count AS(
    SELECT MAX(Tot_Chal) AS max_count
    FROM tot_chall
),
freq_chal_count AS (
    SELECT Tot_Chal, COUNT(*) AS freq_count
    FROM tot_chall
    GROUP BY Tot_Chal
)

SELECT H.hacker_id, H.name ,TC.Tot_Chal
FROM Hackers H
INNER JOIN tot_chall TC ON H.hacker_id = TC.hacker_id
CROSS JOIN max_chal_count MCC
INNER JOIN freq_chal_count FCC ON TC.Tot_Chal = FCC.Tot_Chal
WHERE TC.Tot_Chal = MCC.max_count
    OR (TC.Tot_Chal < MCC.max_count AND FCC.freq_count = 1)
ORDER BY TC.Tot_Chal DESC, H.hacker_id;

-- Time Complexity: O(n log n)
-- Space Complexity: O(n)

--Alternative Approach:
WITH challenge_counts AS (
    SELECT 
        h.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS challenges_created
    FROM 
        Hackers h
    JOIN 
        Challenges c ON h.hacker_id = c.hacker_id
    GROUP BY 
        h.hacker_id, h.name
),
count_frequency AS (
    SELECT 
        challenges_created,
        COUNT(*) AS frequency
    FROM 
        challenge_counts
    GROUP BY 
        challenges_created
)

SELECT 
    cc.hacker_id,
    cc.name,
    cc.challenges_created
FROM 
    challenge_counts cc
JOIN 
    count_frequency cf ON cc.challenges_created = cf.challenges_created
WHERE 
    cf.frequency = 1 
    OR cc.challenges_created = (SELECT MAX(challenges_created) FROM challenge_counts)
ORDER BY 
    cc.challenges_created DESC,
    cc.hacker_id;
