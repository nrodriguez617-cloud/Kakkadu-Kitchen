-- I. List all partners showing their name, phone number and full address. 
SELECT 
PartnerID, 
Name, 
Phone, 
Concat(StreetNo," ",StreetName," ", City, " ", State," ",Postcode) as Address 
FROM 
Partner; 
 
-- II. Find all products that Kakadu Kitchen produces itself (i.e., without being in a partnership). 
SELECT  
A.ProductNo,  
A.Name  
FROM  
Product A  
LEFT JOIN  
PartnershipProduct B  
ON A.ProductNo = B.ProductNo  
WHERE PartnershipID is null;  
 
-- III. The date on which the 2nd oldest partnership has been formed. Show the date (e.g., 23-12-2023) and total investment (e.g., $230,000) in this Partnership. 
 
With TOP_2 AS ( 
SELECT   
PartnershipID,   
StartDate,   
TotalInvestment   
FROM   
Partnership  
ORDER BY StartDate ASC   
LIMIT 1 OFFSET 1; 
 
 