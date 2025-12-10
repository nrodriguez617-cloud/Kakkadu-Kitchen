use kkitchen_84; 

INSERT INTO partnertype (PartnerTypeID, Description) VALUES
('PO', 'Producer only'),
('PR', 'Producer and retailer'),
('RO', 'Retailer only'),
('SO', 'Supplier only'),
('SR', 'Supplier and retailer');

INSERT INTO partner (PartnerID, Name, TypeID, Phone, StreetNo, StreetName, City, State, Postcode) VALUES
(1, 'Refresh Darwin', 'SO', '0882869887', '10', 'Fame St', 'Alawa', 'NT', '0810'),
(2, 'ALTD Spirits', 'PR', '0290899663', '45', 'Maple Cres', 'Rockdale', 'NT', '2500'),
(3, 'OzHarvest', 'PR', '0798933988', '140', 'Rubicon Rd', 'Sunnybank', 'NT', '4111'),
(4, 'Coles', 'RO', '0392882777', '170', 'Dunnings St', 'Footscray', 'NT', '3842'),
(5, 'First Nations-owned company', 'SR', '0878478721', '90', 'Bay St', 'Darwin City', 'NT', '0800');

INSERT INTO partnership (PartnershipID, StartDate, TotalInvestment) VALUES 
(1,'2018-02-13', 20000),
(2,'2021-10-22', 22500),
(3,'2022-03-13', 30000),
(4,'2024-04-12', 25000),
(5,'2025-05-13', 35000);

INSERT INTO partnerpartnership (PartnerPartnershipID, PartnerID, PartnershipID, PartnerInvShare, PartnerSaleShare) VALUES 
('1', '1', '1', 10000, 75.00),
('2', '2', '2', 11000, 82.00),
('3', '2', '3', 12000, 35.20),
('4', '4', '4', 15000, 40.00),
('5', '5', '5', 25000, 65.00), 
('6', '3', '3', 10000, 45.00); 

INSERT INTO producttype (ProductTypeID, Description) VALUES 
('WSP', 'Water - sparkling'),
('WST', 'Water - still'), 
('SNT', 'Spirit - non-alcoholic, still'), 
('SNP', 'Spirit - non-alcoholic, sparkling'),
('WNA', 'Wine - non-alcoholic'),
('WNC', 'Wine - non-alcoholic, carbonated'), 
('SLT', 'Spirit - limited edition, still'),
('SLP', 'Spirit - limited edition, sparkling'),
('SLC', 'Spirit - limited edition, carbonated'); 

INSERT INTO sourcetype (SourceTypeID, Description) VALUES 
('1', 'Palmerston Dolostone aquifer'), 
('2', 'Kakadu National Park'), 
('3', 'Wild-harvested native botanicals'),
('4', 'Capricorn Coast aquifer'),
('5', 'Yarra Ranges aquifer'); 

INSERT INTO packagingtype (PackageTypeID, Description) VALUES 
('GOS', 'Glass bottle with cork cap (single)'),
('GRS', 'Glass bottle with crown cap (single)'), 
('PPS', 'Plastic bottle with polyethylene cap (single)'),
('GOP', 'Glass bottle with cork cap (pack of 6)'), 
('GRP', 'Glass bottle with crown cap (pack of 6)'), 
('PPP', 'Plastic bottle with polyethylene cap (pack of 6)'); 

INSERT INTO product (ProductNo, Name, Description, ProdTypeID, SrcTypeID, PackTypeID, Ingredients, Amount, Price) VALUES
(1,'Akuna Springs','Mineral-rich spring water','WSP',1,'GOS','Spring water, lightly carbonated','600ml',4.99),
(2,'Akuna Springs','Mineral-rich spring water','WST',4,'GOS','Spring water','600ml',4.99),
(3,'Akuna Springs','Mineral-rich spring water','WSP',5,'GRS','Spring water, lightly carbonated','600ml',4.49),
(4,'Akuna Springs','Mineral-rich spring water','WST',1,'GRS','Spring water','600ml',4.49),
(5,'Akuna Springs','Mineral-rich spring water','WST',4,'PPS','Spring water','600ml',3.49),
(6,'Akuna Springs','Mineral-rich spring water','WSP',1,'GOP','Spring water, lightly carbonated','3,600ml',28.99),
(7,'Akuna Springs','Mineral-rich spring water','WST',4,'GOP','Spring water','3,600ml',28.99),
(8,'Akuna Springs','Mineral-rich spring water','WSP',5,'GRP','Spring water, lightly carbonated','3,600ml',24.49),
(9,'Akuna Springs','Mineral-rich spring water','WST',1,'GRP','Spring water','3,600ml',24.49),
(10,'Akuna Springs','Mineral-rich spring water','WST',4,'PPP','Spring water','3,600ml',18.49),
(11,'Akuna Blue','Premium spring water','WSP',1,'GOS','Spring water, lightly carbonated','600ml',5.99),
(12,'Akuna Blue','Premium spring water','WST',4,'GOS','Spring water','600ml',5.99),
(13,'Akuna Blue','Premium spring water','WSP',5,'GRS','Spring water, lightly carbonated','600ml',5.49),
(14,'Akuna Blue','Premium spring water','WST',1,'GRS','Spring water','600ml',5.49),
(15,'Akuna Blue','Premium spring water','WST',4,'PPS','Spring water','600ml',4.49),
(16,'Akuna Blue','Premium spring water','WSP',1,'GOP','Spring water, lightly carbonated','3,600ml',34.99),
(17,'Akuna Blue','Premium spring water','WST',4,'GOP','Spring water','3,600ml',34.99),
(18,'Akuna Blue','Premium spring water','WSP',5,'GRP','Spring water, lightly carbonated','3,600ml',30.49),
(19,'Akuna Blue','Premium spring water','WST',1,'GRP','Spring water','3,600ml',30.49),
(20,'Akuna Blue','Premium spring water','WST',4,'PPP','Spring water','3,600ml',25.49),
(21,'Kakadu An-marabula Bellini','Native Peach Bellini, non-alcoholic spirit alternative ','SNT',2,'GOS','Native peach nectar, botanical extracts, dealcoholized wine, natural flavours, colours, sparkling water, citric acid, vegetable glycerine, potassium sorbate and sugar','750ml',10.99),
(22,'Kakadu An-marabula Bellini','Native Peach Bellini, non-alcoholic spirit alternative ','SNT',2,'GOP','Native peach nectar, botanical extracts, dealcoholized wine, natural flavours, colours, sparkling water, citric acid, vegetable glycerine, potassium sorbate and sugar','4,500ml',61.99),
(23,'Kakadu Kitchen x OzHarvest Conscious Drink','Conscious Drink, non-alcoholic wine alternative','WNA',3,'GOS','Ethically sourced: filtered water, blueberry juice, lemongrass, saltbush, pepper berry, vinegar, botanical extracts, natural flavours, agave, citric acid, and potassium sorbate','750ml',18.49),
(24,'Kakadu Kitchen x OzHarvest Conscious Drink','Conscious Drink, non-alcoholic wine alternative','WNC',3,'GOS','Ethically sourced: filtered water, blueberry juice, lemongrass, saltbush, pepper berry, vinegar, botanical extracts, natural flavours, agave, citric acid, potassium sorbate, and lightly carbonated','750ml',18.99),
(25,'Kakadu Kitchen x OzHarvest Conscious Drink','Conscious Drink, non-alcoholic wine alternative','WNA',3,'GOP','Ethically sourced: filtered water, blueberry juice, lemongrass, saltbush, pepper berry, vinegar, botanical extracts, natural flavours, agave, citric acid, and potassium sorbate','4,500ml',110.49),
(26,'Kakadu Kitchen x OzHarvest Conscious Drink','Conscious Drink, non-alcoholic wine alternative','WNC',3,'GOP','Ethically sourced: filtered water, blueberry juice, lemongrass, saltbush, pepper berry, vinegar, botanical extracts, natural flavours, agave, citric acid, potassium sorbate, and lightly carbonated','4,500ml',113.99),
(27,'ALTD x Kakadu Kaboh (Green Ant) G&T','Ready-to-drink (RTD) beverage','SLT',2,'GRS','Distilled juniper, handcrafted bitters, black pepper, green ants, botanical extracts, natural flavours, citric acid, vegetable glycerine, and potassium sorbate','600ml',39.99),
(28,'ALTD x Kakadu Kaboh (Green Ant) G&T','Ready-to-drink (RTD) beverage','SLP',2,'GRS','Distilled juniper, handcrafted bitters, black pepper, green ants, botanical extracts, natural flavours, citric acid, vegetable glycerine, and potassium sorbate','750ml',45.99),
(29,'ALTD x Kakadu Kaboh (Green Ant) G&T','Ready-to-drink (RTD) beverage','SLC',2,'GRS','Distilled juniper, handcrafted bitters, black pepper, green ants, botanical extracts, natural flavours, citric acid, vegetable glycerine, and potassium sorbate','500ml',35.99),
(30,'ALTD x Kakadu Kaboh (Green Ant) G&T','Ready-to-drink (RTD) beverage','SLT',2,'GOS','Distilled juniper, handcrafted bitters, black pepper, green ants, botanical extracts, natural flavours, citric acid, vegetable glycerine, native sugar cane "djilidjilih", and potassium sorbate','600ml',39.99),
(31,'ALTD x Kakadu Kaboh (Green Ant) G&T','Ready-to-drink (RTD) beverage','SLP',2,'GOS','Distilled juniper, handcrafted bitters, black pepper, green ants, botanical extracts, natural flavours, citric acid, vegetable glycerine, native sugar cane "djilidjilih", and potassium sorbate','750ml',45.99),
(32,'ALTD x Kakadu Kaboh (Green Ant) G&T','Ready-to-drink (RTD) beverage','SLC',2,'GOS','Distilled juniper, handcrafted bitters, black pepper, green ants, botanical extracts, natural flavours, citric acid, vegetable glycerine, native sugar cane "djilidjilih", and potassium sorbate','500ml',35.99),
(33,'Kakadu An-marabula Bellini','Native Peach Bellini, non-alcoholic spirit alternative ','SNP',2,'GOS','Native peach nectar, botanical extracts, dealcoholized wine, natural flavours, colours, sparkling water, citric acid, vegetable glycerine, potassium sorbate and sugar','750ml',12.99),
(34,'Kakadu An-marabula Bellini','Native Peach Bellini, non-alcoholic spirit alternative ','SNP',2,'GOP','Native peach nectar, botanical extracts, dealcoholized wine, natural flavours, colours, sparkling water, citric acid, vegetable glycerine, potassium sorbate and sugar','4,500ml',66.99);

INSERT INTO PARTNERSHIPPRODUCT (ProductNo, PartnershipID, TotalUnitAgreed, TotalUnitDelivered) VALUES 
(1,1,100000,33335),
(2,1,100000,24444),
(3,1,130000,24000),
(4,1,240000,36000),
(5,1,134000,34000),
(6,1,50000,4000),
(7,1,20000,6000),
(8,1,30000,4000),
(9,1,37000,6000),
(10,1,48000,4000),
(11,1,100000,33335),
(12,1,100000,34444),
(13,1,130000,44000),
(14,1,240000,76000),
(15,1,134000,44000),
(16,1,50000,5000),
(17,1,20000,6000),
(18,1,30000,5000),
(19,1,37000,6000),
(20,1,48000,5000),
(9,2,18000,4000),
(10,2,30000,13335),
(11,3,110000,34000),
(12,3,70000,15000),
(21,2,30000,10000),
(22,2,25000,8334),
(23,3,85000,5000),
(24,3,77000,6000),
(25,3,45000,5000),
(26,3,39000,10000),
(23,5,100000,30000),
(24,5,100000,30000),
(25,5,100000,30000),
(26,5,100000,30000),
(1,NULL,15000,500),
(2,NULL,25000,4000),
(11,NULL,35000,3000),
(12,NULL,22000,7456),
(27,2,5000,2000),
(28,2,6000,0),
(29,2,7000,0),
(30,2,8000,0),
(31,2,9000,0),
(32,2,10000,0),
(33,2,20000,0),
(34,2,15000,0),
(16,NULL,5000,0),
(17,NULL,2000,0);