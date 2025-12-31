SELECT order_id, payment_date, amount, COUNT(*) dup_count
FROM payments
GROUP BY order_id, payment_date, amount
HAVING COUNT(*)>1;