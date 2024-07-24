START TRANSACTION; 
SELECT @A:= Balance FROM shopping_card WHERE Customer_ID = 
314; 
UPDATE shopping_card SET Balance = @A + 20000 WHERE 
Customer_ID = 314; 
COMMIT; 
Select * from shopping_card where Customer_ID = 314