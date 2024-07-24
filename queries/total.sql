Select Customer_ID, Sum(Total_price) as Total 
From Payment  
Where Total_Price > 15000  
Group by Customer_ID 
Having Count(Customer_ID) > 1 
