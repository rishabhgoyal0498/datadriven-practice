with clean as (
select trim(lower(svc_name)) as svc_name, 
trim(lower(status)) as status,
dur_secs
from deploy_logs
)

select svc_name, status, sum(dur_secs)
from clean
group by 1,2
order by 1,2
