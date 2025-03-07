'''
Question Link : https://www.hackerrank.com/challenges/binary-search-tree-1/problem
Question      : Binary Tree Nodes
Difficulty    : Medium
Skills        : SQL (Intermediate)
Sub Domain    : Advanced Select
Language Used : My SQL
'''

-- My Initial Approach:
WITH root_node AS (
    SELECT N
    FROM BST
    WHERE P IS NULL
),
leaf_node AS (
    SELECT DISTINCT(N)
    FROM BST
    WHERE N NOT IN (SELECT P
                    FROM BST
                    WHERE P IS NOT NULL)
),
inner_node AS(
    SELECT DISTINCT(N)
    FROM BST
    WHERE N NOT IN (SELECT * FROM root_node 
                    UNION
                    SELECT * FROM leaf_node)
)

SELECT N,
    CASE
        WHEN N IN (SELECT N FROM root_node) THEN 'Root'
        WHEN N IN (SELECT N FROM leaf_node) THEN 'Leaf'
        WHEN N IN (SELECT N FROM inner_node) THEN 'Inner'
    END
FROM BST
ORDER BY N ASC;

-- Time Complexity: O(n*2) {Subquery with Not IN - O(n*2) + Union - O(n log n) + Case - O(n*2) + Order By - O(n log n)}
-- Space Complexity: O(n) 

-- 2nd Approach:
SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY N;
