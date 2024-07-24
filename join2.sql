SELECT a.Provider_FN, a.Provider_LN, 
b.Seller_FN, b.Seller_LN FROM Provider a LEFT JOIN Seller b 
ON a.Provider_ID = b.Provider_id order by a.Provider_ID; 
