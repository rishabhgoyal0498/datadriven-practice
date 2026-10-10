select ad_campaign,  count(impression_id) as impression,
coalesce(sum(revenue), 0) as total_revenue,
round(100.0 * sum(clicked)/ count(*),1) as ctr
from  ad_impressions
group by 1
having impression>15
order by ctr desc, ad_campaign asc;
