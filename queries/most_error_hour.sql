-- task 2: Which hours had the most errors?--
select HOUR(timestamp) as hour,
count(case when status_code >= 400 then 1 end) as errors
from server_logs
group by hour
order by errors desc;