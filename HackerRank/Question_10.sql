-- https://www.hackerrank.com/challenges/weather-observation-station-20

SELECT 
ROUND(AVG(LAT_N),4) 
FROM 
(
    SELECT *, ROW_NUMBER () OVER(ORDER BY LAT_N) AS RN, 
    COUNT(1) OVER() AS CNT FROM STATION
) 
As A WHERE RN BETWEEN CNT/2 AND CNT/2+1;