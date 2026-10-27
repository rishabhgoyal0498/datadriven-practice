with error_type as (
select *,
  case 
  when UPPER(err_type) like '%MEMORY%' then 'memory'
  when UPPER(err_type) like '%TIMEOUT%' then 'timeout'
  else 'other'
  end as error_category
  from err_tracks
)
  
select count(*), error_category
from error_type
group by 2
