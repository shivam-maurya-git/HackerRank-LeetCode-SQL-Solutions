-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
SELECT euni.unique_id, e.name 
FROM Employees e  
LEFT JOIN EmployeeUNI euni  
ON e.id = euni.id;