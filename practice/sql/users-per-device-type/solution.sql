select d.device_type, count(distinct c.user_id) from
 user_sessions as c left join devices as d 
on d.device_id = c.device_id
group by 1
