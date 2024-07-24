SELECT * 
FROM orders 
WHERE Customer_id IN 
(SELECT Customer_id  
FROM Customer  
WHERE Customer_fn='Sidonia' and Customer_ln = 'Manneville');
