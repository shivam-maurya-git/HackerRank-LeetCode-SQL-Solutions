-- https://leetcode.com/problems/biggest-single-number/

WITH cte AS (SELECT num,count(num) AS nc
FROM MyNumbers
GROUP BY num
ORDER BY nc, num DESC
LIMIT 1)

SELECT 
CASE 
WHEN min(nc) = 1 then num
WHEN min(nc)<>1 then null
END As num
FROM cte
