WITH sales AS (
SELECT p.category, p.product_name,
SUM(oi.quantity*oi.price) total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.category, p.product_name
)
SELECT * FROM (
SELECT *, RANK() OVER(PARTITION BY category ORDER BY total_sales DESC) rnk
FROM sales
) t WHERE rnk=1;