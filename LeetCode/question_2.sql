-- https://leetcode.com/problems/product-sales-analysis-i/

SELECT s.year, p.product_name, s.price FROM Sales AS s
INNER JOIN Product AS p
ON s.product_id = p.product_id;