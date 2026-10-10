with shopper_categories as (
    select
        t.user_id,
        count(distinct p.category) as category_count
    from transactions as t
    inner join products as p
        on p.product_id = t.product_id
    where p.category is not null
    group by t.user_id
    having count(distinct p.category) > 1
)
select
    sc.user_id,
    sc.category_count
from shopper_categories as sc
inner join users as u
    on u.user_id = sc.user_id
order by
    sc.category_count desc,
    u.signup_date asc,
    sc.user_id asc;
