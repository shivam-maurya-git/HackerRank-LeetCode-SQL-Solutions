-- https://leetcode.com/problems/average-time-of-process-per-machine/

SELECT 
   s.*,e.*  
FROM Activity s
JOIN Activity e ON e.machine_id=s.machine_id
WHERE s.process_id = e.process_id AND s.activity_type = "start" AND e.activity_type = "end"
GROUP BY s.machine_id
