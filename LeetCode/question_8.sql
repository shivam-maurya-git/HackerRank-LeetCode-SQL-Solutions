-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

SELECT activity_date AS day, COUNT(distinct user_id) AS active_users
FROM Activity
WHERE "2019-07-28" > activity_date  AND activity_date>= DATE_SUB("2019-07-27", INTERVAL 29 DAY)
GROUP BY activity_date