WITH long as (
select content_id, title, publish_date,
DENSE_RANK() over(PARTITION BY content_type order by duration_seconds desc) as dk
from content_items
where duration_seconds is not null
)

select content_id, title
from long
where dk=1 and publish_date >= '2026-01-01'
