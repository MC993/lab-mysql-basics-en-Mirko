-- Question 1

SELECT account_id
FROM account
WHERE district_id = 1
ORDER BY 1 ASC
LIMIT 5;

-- Question 2

SELECT account_id
FROM account
WHERE district_id = 72
ORDER BY 1 DESC
LIMIT 1;

-- Question 3

SELECT amount
FROM loan
ORDER BY 1 ASC
LIMIT 3;

-- Question 4

SELECT DISTINCT status
FROM loan
ORDER BY 1 ASC;

-- Question 5

SELECT loan_id
FROM (SELECT loan_id, MAX(payments) AS max_payment FROM loan GROUP BY 1 ORDER BY 2 DESC LIMIT 1) sub;

-- Question 6

SELECT account_id, SUM(amount) AS amount
FROM loan
GROUP BY 1
ORDER BY 1 ASC
LIMIT 5;

-- Question 7

SELECT account_id
FROM (SELECT account_id, SUM(amount) AS amount FROM loan WHERE duration = 60 GROUP BY 1 ORDER BY 2 ASC LIMIT 5) sub;

-- Question 8

SELECT DISTINCT k_symbol
FROM `order`
ORDER BY 1 ASC;

-- Question 9

SELECT order_id
FROM `order`
WHERE account_id = 34;

-- Question 10

SELECT DISTINCT account_id
FROM `order`
WHERE order_id >= 29540 AND order_id <= 29560;

-- Question 11

SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- Question 12

SELECT trans_id, date, type, amount 
FROM trans
WHERE account_id = 793
ORDER BY 2 DESC
LIMIT 10;

-- Question 13

SELECT district_id, COUNT(client_id) AS tot_count
FROM client
WHERE district_id < 10
GROUP BY 1
ORDER BY 1 ASC
LIMIT 10;

-- Question 14

SELECT type, COUNT(card_id) AS tot_count
FROM card
GROUP BY 1
ORDER BY 2 DESC;

-- Question 15

SELECT account_id, SUM(amount) AS tot_amount
FROM loan
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Question 16

SELECT date, COUNT(DISTINCT date) AS tot_count
FROM loan
WHERE date < 930907
GROUP BY 1
ORDER BY 1 DESC;

-- Question 17

SELECT DISTINCT date, duration, COUNT(loan_id) AS tot_loans
FROM loan
WHERE date >= 971201 AND date <= 971231
GROUP BY 1,2
ORDER BY 1,2 ASC;

-- Question 18

SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY 1,2
ORDER BY 2 ASC;