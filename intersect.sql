Create view Pr_Info_View AS 
Select Product_ID, Pr_Price 
From Product_INFO 
Where Pr_Price like ‘18%’ 

Intersect Prices from two table Product_Info and Pr_Info_View.  
Select Pr_Price  
From Product_Info  
Intersect  
Select Pr_Price  
From Pr_Info_View  
Order by Pr_Price DESC 
