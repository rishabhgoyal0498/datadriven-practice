select user_id, count(query_id) as cnt,
row_number() over(order BY count(*) desc, CAST(user_id AS TEXT) ASC ) as ek
from search_queries
group by 1
order by ek
