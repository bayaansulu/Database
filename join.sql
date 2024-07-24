Select a.Customer_FN, a.Customer_LN,  
b.Customer_ID, b.Balance, b.Card_ID 
FROM Customer a, Shopping Card b  
WHERE a.Customer_ID = b.Customer_ID  
AND b.Balance Between 350000 AND 400000 
