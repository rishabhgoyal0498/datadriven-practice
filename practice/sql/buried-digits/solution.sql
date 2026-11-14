select svc_name, cast(replace(trim(version,'v'),'.') as integer)
from deploy_logs
where env_name = 'staging'
