select count(distinct owner_id) from api_tokens
where upper(status) = 'ACTIVE' and year(issued) = 2026
