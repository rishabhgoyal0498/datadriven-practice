with normal as (
select
  Upper(method) as method,
  latency
  from api_calls
  where latency is not null
  ),
  
  ranked as (
  select
    method,
    latency,
    row_number() over (partition by method order by latency asc) as rk
  from normal
  )
  
  select
    method,
    round(avg(latency),2) as latency
  from ranked
  where rk<=5
  group by 1
  order by 1
