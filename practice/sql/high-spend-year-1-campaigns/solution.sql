select ad_campaign, year(impression_time) as impression_year,
count(distinct user_id) as unique_users
from ad_impressions
group by 1,2
having sum(revenue) > 5
