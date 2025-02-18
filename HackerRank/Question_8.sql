-- https://www.hackerrank.com/challenges/placements

Select name from students A
join friends B
on A.id = B.id 
join packages C
on A.id = C.id
join packages D 
on B.friend_id = D.id
where C.salary < D.salary
order by D.salary;
