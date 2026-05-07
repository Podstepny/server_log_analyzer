# Server Log Analyzer 📊

## Project Description
This project analyzes server logs in order to:
- identify HTTP errors
- detect performance anomalies
- find issues affecting specific servers

## Analytical Questions

### 1. What percentage of requests ended with an error?
**Result:** 42.86%

### 2. Which hours had the highest number of errors?
**Result:** 
####hour  ####errors
8	3
9	2
10	1
11	1
13	1
14	1
12	0
15	0

### 3. For each endpoint, what is the error rate and the average response time?|
####endpoint ####error_endpoint_count  ####error_endpoint_percantage ####average_response_time
/api/orders	5	               71.4	                   1757.1
/api/users	3	               37.5	                   864.4
/api/products	1	               16.7	                   543.3

### 4. Top 3 most frequent errors
####error_message               ####message
null                            12
Database connection timeout	2
Invalid JSON payload	        1

### 5. Which servers had the highest number of 5xx errors?
####server_id   ####server_errors
SRV-02	        3
SRV-01	        2
SRV-03	        1

## How to Run

1. Create the database:
```sql
mysql -u root -p < schema.sql