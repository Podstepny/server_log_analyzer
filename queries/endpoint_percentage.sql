-- task 3: For each endpoint - what % of errors and average response time?-- 
select endpoint,
count(case when status_code >= 400 then 1 end) as error_endpoint_count,
round((count(case when status_code >= 400 then 1 end) / count(*)) * 100, 1) as error_endpoint_percantage,
round(avg(response_time_ms), 1) as average_response_time
from server_logs
group by endpoint
order by error_endpoint_percantage desc;