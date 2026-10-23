select * from
alert_events
where Upper(severity) in ('HIGH','CRITICAL')
and year(fired_at) = 2026
