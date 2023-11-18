-- Number of Transactions
select count(*) from transactions;
-- Total Transacted Value
select sum(price) from transactions;
-- Unique Users This Week
SELECT COUNT(DISTINCT Wallet_address) AS unique_users_this_week
FROM transactions
WHERE 
    to_timestamp(timestamp / 1000) >= DATE_TRUNC('week', CURRENT_DATE)
    AND to_timestamp(timestamp / 1000) < DATE_TRUNC('week', CURRENT_DATE) + INTERVAL '1 week';
-- Total Users
SELECT 
    COUNT(DISTINCT wallet_address) AS unique_users
FROM 
    transactions
;
-- Daily Transactions and Users
SELECT 
    DATE_TRUNC('day', to_timestamp(timestamp / 1000)) AS transaction_date,
    COUNT(*) AS daily_transactions,
    COUNT(DISTINCT wallet_address) AS unique_users
FROM 
    transactions
GROUP BY 
    transaction_date
ORDER BY 
    transaction_date
    ;