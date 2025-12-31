SELECT *
FROM (
SELECT
c.customer_id,
c.name,
SUM(p.amount) AS total_spent,
DENSE_RANK() OVER (ORDER BY SUM(p.amount) DESC) AS rank_no
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
) ranked
WHERE rank_no <= 3;