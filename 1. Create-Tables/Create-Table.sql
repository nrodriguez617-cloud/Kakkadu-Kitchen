CREATE DATABASE IF NOT EXISTS KKitchen_84;
use kkitchen_84;
CREATE TABLE IF NOT EXISTS partnertype (
  PartnerTypeID char(2) NOT NULL,
  Description varchar(30) NOT NULL,
  PRIMARY KEY (PartnerTypeID)
);


CREATE TABLE IF NOT EXISTS partner (
  PartnerID int NOT NULL AUTO_INCREMENT,
  Name varchar(50),
  TypeID char(2),
  Phone char(10),
  StreetNo varchar(5),
  StreetName varchar(40),
  City varchar(30),
  State varchar(3),
  Postcode char(4),
  PRIMARY KEY (PartnerID),
  FOREIGN KEY (TypeID) REFERENCES partnertype (PartnerTypeID)
);

CREATE TABLE IF NOT EXISTS partnership (
  PartnershipID int NOT NULL AUTO_INCREMENT,
  StartDate date,
  TotalInvestment decimal(10,2),
  PRIMARY KEY (PartnershipID)
);


CREATE TABLE IF NOT EXISTS partnerpartnership (
  PartnerPartnerShipID int NOT NULL AUTO_INCREMENT,
  PartnerID int,
  PartnershipID int,
  PartnerInvShare decimal(10,2),
  PartnerSaleShare decimal(5,2),
  PRIMARY KEY (PartnerPartnerShipID),
  FOREIGN KEY (PartnerID) REFERENCES partner (PartnerID),
  FOREIGN KEY (PartnershipID) REFERENCES partnership (PartnershipID)
);

CREATE TABLE IF NOT EXISTS producttype (
  ProductTypeID char(3) NOT NULL,
  Description varchar(50),
  PRIMARY KEY (ProductTypeID)
);


CREATE TABLE IF NOT EXISTS sourcetype (
  SourceTypeID int NOT NULL AUTO_INCREMENT,
  Description varchar(40),
  PRIMARY KEY (SourceTypeID)
);

CREATE TABLE IF NOT EXISTS packagingtype (
  PackageTypeID char(3) NOT NULL,
  Description varchar(60),
  PRIMARY KEY (PackageTypeID)
);

CREATE TABLE IF NOT EXISTS product (
  ProductNo int NOT NULL AUTO_INCREMENT,
  Name varchar(42),
  Description varchar(70),
  ProdTypeID char(3),
  SrcTypeID int,
  PackTypeID char(3),
  Ingredients varchar(200),
  Amount varchar(10),
  Price decimal(5,2),
  PRIMARY KEY (ProductNo),
  FOREIGN KEY (ProdTypeID) REFERENCES producttype (ProductTypeID),
  FOREIGN KEY (SrcTypeID) REFERENCES sourcetype (SourceTypeID),
  FOREIGN KEY (PackTypeID) REFERENCES packagingtype (PackageTypeID)
);

CREATE TABLE IF NOT EXISTS partnershipproduct (
  PartnershipProductID int NOT NULL AUTO_INCREMENT,
  ProductNo int,
  PartnershipID int,
  TotalUnitAgreed int,
  TotalUnitDelivered int,
  PRIMARY KEY (PartnershipProductID),
  FOREIGN KEY (ProductNo) REFERENCES product (ProductNo),
  FOREIGN KEY (PartnershipID) REFERENCES partnership (PartnershipID)
);
