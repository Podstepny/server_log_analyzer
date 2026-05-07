CREATE DATABASE server_logs_db;
USE server_logs_db;

CREATE TABLE server_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    timestamp DATETIME NOT NULL,
    server_id VARCHAR(10),
    endpoint VARCHAR(100),
    http_method VARCHAR(10),
    status_code INT,
    response_time_ms INT,
    error_message VARCHAR(255),
    user_id INT,
    request_size_kb INT,
    INDEX idx_timestamp (timestamp),
    INDEX idx_status (status_code),
    INDEX idx_server (server_id)
);