WITH quarterly AS (
  SELECT
    user_id AS region,
    SUM(CASE WHEN EXTRACT(MONTH FROM transaction_date) BETWEEN 7 AND 9
             THEN total_amount END) AS q3_total,
    SUM(CASE WHEN EXTRACT(MONTH FROM transaction_date) BETWEEN 10 AND 12
             THEN total_amount END) AS q4_total
  FROM transactions
  WHERE EXTRACT(MONTH FROM transaction_date) BETWEEN 7 AND 12
  GROUP BY user_id
)
SELECT
  region,
  ROUND((q4_total - q3_total) * 100.0 / q3_total, 3) AS growth_pct
FROM quarterly
WHERE q3_total IS NOT NULL
  AND q4_total IS NOT NULL
  AND q3_total <> 0;          -- avoid dividing by zero
