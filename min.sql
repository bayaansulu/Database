Select Customer_ID, Min(Order_Quantity) as minOrderQuantity  
From Orders 
Group by Customer_ID 
Order by Min(Order_Quantity) 
