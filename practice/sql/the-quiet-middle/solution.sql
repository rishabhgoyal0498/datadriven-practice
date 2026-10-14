with ranky as (select job_name,
dense_rank() over (order by rows_done desc) as rk
from batch_jobs
)
select * from ranky
where rk between 8 and 10
