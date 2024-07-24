SELECT Product_ID, Pr_Quantity, Pr_Price FROM Product_INFO 
Except SELECT Product_ID, Pr_Quantity, Pr_Price FROM Product_INFO  
WHERE Pr_Quantity > 100
