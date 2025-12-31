WITH cnt AS (
SELECT o.customer_id, p.product_name,
SUM(oi.quantity) qty
FROM orders o
JOIN order_items oi ON o.order_id=oi.order_id
JOIN products p ON oi.product_id=p.product_id
GROUP BY o.customer_id, p.product_name
)
SELECT * FROM (
SELECT *, ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY qty DESC) rn
FROM cnt
) t WHERE rn=1;