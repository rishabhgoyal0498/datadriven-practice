select d.device_type, 
avg(u.session_duration_sec), max(u.session_duration_sec),
count(session_id) as session_count
from user_sessions as u
inner join devices as d
on u.device_id = d.device_id

group by 1
having session_count >= 35
