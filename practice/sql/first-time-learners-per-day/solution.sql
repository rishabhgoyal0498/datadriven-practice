with new_user as (
select date(session_start) as date,
row_number() over (partition by user_id order by session_start asc) as rk
from user_sessions
),

final as (
select date, count(rk)
from new_user
where rk=1
group by 1

)

select * from final
