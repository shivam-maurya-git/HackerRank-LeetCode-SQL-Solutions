-- https://www.hackerrank.com/challenges/the-report

SELECT 
CASE
WHEN GRADES.Grade<8 THEN 'NULL' 
ELSE STUDENTS.Name 
End as Name, GRADES.Grade,STUDENTS.Marks 
FROM Students 
JOIN Grades 
ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark 
ORDER BY Grade DESC, Name ASC, Marks ASC;