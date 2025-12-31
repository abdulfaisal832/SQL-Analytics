SELECT payment_date,
SUM(amount) daily_revenue,
SUM(SUM(amount)) OVER(ORDER BY payment_date) running_total
FROM payments
GROUP BY payment_date;