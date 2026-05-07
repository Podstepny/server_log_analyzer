-- task 5:  Which servers have the most 5xx errors-- 
select 
server_id,
count(*) as server_errors
from server_logs
where status_code >= 500
group by server_id 
order by server_errors desc;