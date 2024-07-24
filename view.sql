Create view Comments_View AS 
Select Comment_ID, Product_ID, Rating  
From Comment  
Where Rating > 5 
Select * from Comment 

Update Comments_View  
Set rating = 9 
Where Product_ID = ‘411’
