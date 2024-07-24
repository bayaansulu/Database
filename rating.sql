SELECT Product_ID, Rating 
FROM Comments 
WHERE Product_ID like '41%'  and Rating > 6 
UNION  
SELECT Product_ID, Rating 
FROM Comments_View
