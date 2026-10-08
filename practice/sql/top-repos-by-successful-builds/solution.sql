select repo_name, count(*) as success_count from ci_builds
where status = 'success'
group by 1
order by success_count desc
