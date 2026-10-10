with cleaned as (
    select
        lower(framework) as framework,
        accuracy,
        -- strip 'v' prefix and '-beta' suffix, keep major.minor only
        substring(
            regexp_replace(regexp_replace(version, '^v', ''), '-beta$', '')
            from '^\d+(\.\d+)?'
        )::numeric as ver
    from ml_models
)
select
    framework,
    round(avg(accuracy)::numeric, 2) as avg_accuracy
from cleaned
where ver >= 1.0
  and ver <= 2.0
group by framework
order by framework;
