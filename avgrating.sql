Select Product_ID, AVG(Rating) AS AVGrating 
from Comments 
Group by Product_ID 
Order by AVG(Rating) DESC 
