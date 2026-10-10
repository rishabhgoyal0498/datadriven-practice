with cleaned as (
    select
        lower(framework) as framework,
        accuracy,
        split_part(split_part(ltrim(version, 'v'), '-', 1), '.', 1)::int as major,
        coalesce(nullif(split_part(split_part(ltrim(version, 'v'), '-', 1), '.', 2), '')::int, 0) as minor
    from ml_models
)
select framework, round(avg(accuracy)::numeric, 2) as avg_accuracy
from cleaned
where major = 1 or (major = 2 and minor = 0)
group by framework
order by framework;
