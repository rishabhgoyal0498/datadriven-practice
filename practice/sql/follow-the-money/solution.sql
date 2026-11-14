select user_id, sum(total_amount) as total_spent from
transactions 
where year(transaction_date) = '2026'
group by 1
order by total_spent desc
