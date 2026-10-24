select count(distinct u.user_id) from
users u left join transactions t
on u.user_id = t.user_id
where u.account_status = 'active'
and t.transaction_id is not null
and year(t.transaction_date) = 2026
and month(t.transaction_date) = 04
