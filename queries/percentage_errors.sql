use server_logs_db;

-- task 1: What percentage of requests resulted in an error--
Select 
count(case when status_code >= 400 then 1 end) as error_count,
count(*) as total_request,
round((count(case when status_code >= 400 then 1 end) / count(*)) * 100, 2) as error_percantage
from server_logs;

