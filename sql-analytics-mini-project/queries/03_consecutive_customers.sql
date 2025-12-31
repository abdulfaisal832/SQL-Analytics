WITH m AS (
SELECT DISTINCT customer_id,
DATE_FORMAT(order_date,'%Y-%m') month
FROM orders
)
SELECT DISTINCT m1.customer_id
FROM m m1
JOIN m m2
ON m1.customer_id = m2.customer_id
AND PERIOD_DIFF(m2.month,m1.month)=1;