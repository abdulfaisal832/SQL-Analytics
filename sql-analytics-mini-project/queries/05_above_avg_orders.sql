WITH totals AS (
SELECT o.order_id,
SUM(oi.quantity*oi.price) order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
)
SELECT * FROM totals
WHERE order_value > (SELECT AVG(order_value) FROM totals);