-- task 4: Find the Top 3 most common error messages-- 
select error_message,
count(*) as message
from server_logs
group by error_message
order by message desc
limit 3;