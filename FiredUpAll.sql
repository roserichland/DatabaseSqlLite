/*DROP TABLE [CUSTOMER];*/
CREATE TABLE [CUSTOMER](
	[CustomerID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[StreetAddress] [varchar](50) NULL,
	[ApartmentNbr] [varchar](10) NULL,
	[City] [varchar](25) NULL,
	[StateProvince] [varchar](2) NULL,
	[ZipCode] [varchar](10) NULL,
	[Country] [varchar](20) NULL
);

/*DROP TABLE [EMAIL];*/
CREATE TABLE [EMAIL](
	[SequenceNbr] [numeric](18, 0) NULL,
	[EMailAddress] [varchar](50) NULL,
	[FK_CustomerID] [numeric](18, 0) NULL
);

/*DROP TABLE [EMPLOYEE];*/
CREATE TABLE [EMPLOYEE](
	[EmpID] [numeric](18, 0) NULL,
	[Name] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Initials] [varchar](5) NULL
);

/*DROP TABLE [INV_LINE_ITEM];*/
CREATE TABLE [INV_LINE_ITEM](
	[LineNbr] [numeric](18, 0) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[FK_InvoiceNbr] [numeric](18, 0) NULL,
	[FK_PartNbr] [numeric](18, 0) NULL,
	[FK_StoveNbr] [numeric](18, 0) NULL,
	[ExtendedPrice] [numeric](18, 2) NULL
);

/*DROP TABLE [INVOICE];*/
CREATE TABLE [INVOICE](
	[InvoiceNbr] [numeric](18, 0) NULL,
	[InvoiceDt] [datetime] NULL,
	[TotalPrice] [numeric](18, 2) NULL,
	[FK_CustomerID] [numeric](18, 0) NULL,
	[FK_EmpID] [numeric](18, 0) NULL
);

/*DROP TABLE [PART];*/
CREATE TABLE [PART](
	[PartNbr] [numeric](18, 0) NULL,
	[Description] [varchar](50) NULL,
	[Cost] [numeric](18, 2) NULL,
	[SalesPrice] [numeric](18, 2) NULL
);

/*DROP TABLE [PHONE];*/
CREATE TABLE [PHONE](
	[Type] [varchar](10) NULL,
	[PhoneNbr] [varchar](12) NULL,
	[FK_CustomerID] [numeric](18, 0) NULL
);

/*DROP TABLE [PO_LINE_ITEM];*/
CREATE TABLE [PO_LINE_ITEM](
	[FK_PONbr] [float] NULL,
	[LineNbr] [float] NULL,
	[ExtendedPrice] [money] NULL,
	[Fk_PartNbr] [smallint] NULL,
	[Quantity] [int] NULL
);

/*DROP TABLE [PURCHASE_ORDER];*/
CREATE TABLE [PURCHASE_ORDER](
	[PONbr] [numeric](18, 0) NULL,
	[OrderDt] [datetime] NULL,
	[Terms] [varchar](15) NULL,
	[FK_SupplierNbr] [numeric](18, 0) NULL
);

/*DROP TABLE [REPAIR_LINE_ITEM];*/
CREATE TABLE [REPAIR_LINE_ITEM](
	[FK_RepairNbr] [smallint] NULL,
	[LineNbr] [smallint] NULL,
	[FK_PartNbr] [smallint] NULL,
	[Quantity] [smallint] NULL,
	[ExtendedPrice] [money] NULL,
	[Labor Charge] [numeric](18, 0) NULL
);

/*DROP TABLE [STOVE];*/
CREATE TABLE [STOVE](
	[SerialNumber] [int] NOT NULL,
	[Type] [char](15) NOT NULL,
	[Version] [char](15) NULL,
	[DateOfManufacture] [smalldatetime] NULL,
	[Color] [varchar](12) NULL,
	[FK_EmpId] [int] NULL
);

/*DROP TABLE [STOVE_REPAIR];*/
CREATE TABLE [STOVE_REPAIR](
	[RepairNbr] [int] NOT NULL,
	[FK_StoveNbr] [int] NOT NULL,
	[RepairDt] [smalldatetime] NOT NULL,
	[Description] [varchar](500) NULL,
	[Cost] [numeric](7, 2) NULL,
	[FK_CustomerID] [int] NOT NULL,
	[FK_EmpID] [int] NULL
);

/*DROP TABLE [STOVE_TYPE];*/
CREATE TABLE [STOVE_TYPE](
	[Type] [nvarchar](15) NULL,
	[Version] [nvarchar](15) NULL,
	[Price] [decimal](18, 0) NULL
);

/*DROP TABLE [SUPPLIER];*/
CREATE TABLE [SUPPLIER](
	[SupplierNbr] [numeric](18, 0) NULL,
	[Name] [varchar](50) NULL,
	[SalesRep] [varchar](50) NULL,
	[RepPhoneNumber] [varchar](50) NULL,
	[CSPhoneNumber] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL
);

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (101, 'David Jones', '7 West Pointe Drive', NULL, 'Reno', 'NV', '72145', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (102, 'Bruce Leonard', '145 N. Parkstone Blvd', NULL, 'Palo Alto', 'CA', '96222', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (103, 'Steve Wicks', '133 Ponderosa Hwy SE', NULL, 'Salem', 'OR', '97852', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (104, 'Jenna Tucker', '892 Tanya Green Way', '22', 'Hartford', 'C', '25123', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (105, 'Elaine Anderso', '2119 W. Burnside', NULL, 'Portland', 'OR', '97204', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (106, 'Bob Blessing', '113 Terwilliger Blvd', NULL, 'Portland', 'OR', '97205', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (111, 'James White', '214 W Main St', NULL, 'Beaverto', 'OR', '97005', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (112, 'Wilbur Sargent', '321 Sunset Ave', NULL, 'Klamath Falls', 'OR', '97587', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (113, 'William King', '78883 Hwy 38', '2', 'Sacramento', 'CA', '94887', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (114, 'Elizabeth Smith', '29002 Belmont Way', NULL, 'Boise', 'ID', '87777', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (115, 'Mike Gree', '19432 Gunther Drive', NULL, 'Eureka', 'CA', '94687', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (116, 'Karen Black', '8930 White Flower Street', NULL, 'Billings', 'MT', '72145', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (117, 'Kurt Smith', '1414 Dogwood Drive', '35', 'Bend', 'OR', '97568', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (118, 'Kara White', '789 Blaine St', NULL, 'Pendleton ', 'OR', '97258', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (119, 'Benjamin Rosewood', '888 Catherine St', NULL, 'Tukwila', 'WA', '98214', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (120, 'Max Wickland', '235 Stanley Dr', NULL, 'Olympia', 'WA', '98536', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (121, 'Donna Penwhite', '1245 W Bench Rd', NULL, 'Idaho Falls', 'ID', '87523', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (122, 'Joyce Waters', '1654 Greenville St', NULL, 'Norfolk', 'VA', '21487', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (123, 'Blaine Brow', '22 West Saphire St', NULL, 'Vancouver', 'BC', '26487', 'CA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (124, 'Heather Burnford', '3457 Victoria Drive', NULL, 'Richmond ', 'BC', '26498', 'CA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (125, 'Gary Bostwick', '24650 White Dogwood Rd', '17', 'Helena', 'MT', '72169', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (126, 'Kyle Dustbi', '1717 Terwilliger Ave', NULL, 'Canto', 'OH', '36974', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (127, 'Becky Williams', '594 Oatgreenville Rd', NULL, 'Phoenix', 'AZ', '71456', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (128, 'Terry Burns', '2265 Broche Way', NULL, 'Raliegh', 'NC', '31257', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (129, 'John Coombs', '111 Torchlight Ave', '11', 'San Francisco', 'CA', '94258', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (130, 'Orenco Mountain Shop', '15647 Skyline Road', NULL, 'Boulder', 'CO', '52147', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (131, 'Mid-Town Hiker Supply', '123 33rd', NULL, 'New York', 'NY', '02365', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (132, 'Sierra Outfitters', '5687 Grayson Blvd', NULL, 'Burbank', 'CA', '78612', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (133, 'Jerome Bentis', '666 1 St NW', NULL, 'Calgary', 'AB', 'Y1A4X8', 'CA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (134, 'Sarah Covingto', '33 Cape Drive', '22', 'Beddick', 'NS', 'P3D5N9', 'CA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (135, 'Wilderness Outfitters', '23 Boxwood Crescent', NULL, 'White Horse', 'YT', 'Y1A4X8', 'CA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (136, 'Yogi Berra', '1 Yankee Place', '2', 'New York', 'NY', '12345', 'USA');

INSERT INTO [CUSTOMER] ([CustomerID], [Name], [StreetAddress], [ApartmentNbr], [City], [StateProvince], [ZipCode], [Country]) VALUES (137, 'Casey Stengal', '1 Yankee Place', '3', 'New York', 'NY', '12345', 'USA');

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(3 AS Numeric(18, 0)), 'kelly@whitehorsewilderness.com', CAST(135 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'jwhite837@aol.com', CAST(111 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(2 AS Numeric(18, 0)), 'sarge@hotmail.com', CAST(112 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(3 AS Numeric(18, 0)), 'billking@myisp.com', CAST(113 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(4 AS Numeric(18, 0)), 'lizzie33@aol.com', CAST(114 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(5 AS Numeric(18, 0)), 'bigmike@hotmail.com', CAST(115 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(6 AS Numeric(18, 0)), 'kblack@myisp.com', CAST(116 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(7 AS Numeric(18, 0)), 'smitty@aol.com', CAST(117 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(8 AS Numeric(18, 0)), 'krwhite@hotmail.com', CAST(118 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(9 AS Numeric(18, 0)), 'rosie@myisp.com', CAST(119 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(10 AS Numeric(18, 0)), 'mrwickland@aol.com', CAST(120 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(11 AS Numeric(18, 0)), 'djones222@aol.com', CAST(121 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(12 AS Numeric(18, 0)), 'waterwoman@hotmail.com', CAST(122 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(13 AS Numeric(18, 0)), 'brownie@myisp.com', CAST(123 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(14 AS Numeric(18, 0)), 'hkburnford@aol.com', CAST(124 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(15 AS Numeric(18, 0)), 'bostwickgary@hotmail.com', CAST(125 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(16 AS Numeric(18, 0)), 'ktrash@myisp.com', CAST(126 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(17 AS Numeric(18, 0)), 'beckster@aol.com', CAST(127 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(18 AS Numeric(18, 0)), 'terryburns@hotmail.com', CAST(128 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(19 AS Numeric(18, 0)), 'coombs@myisp.com', CAST(129 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(20 AS Numeric(18, 0)), 'blainebrown@ibm.com', CAST(123 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(21 AS Numeric(18, 0)), 'donnajones@compaq.com', CAST(121 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(22 AS Numeric(18, 0)), 'greenmichael@weyerhauser.com', CAST(115 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'BradleyJ@orencomtn.com', CAST(130 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(2 AS Numeric(18, 0)), 'BickerslyW@orencomtn.com', CAST(130 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'mike@midtownhiker.com', CAST(131 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(2 AS Numeric(18, 0)), 'joe@midtownhiker.com', CAST(131 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'sally@sierraoutfitters.com', CAST(132 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(2 AS Numeric(18, 0)), 'betty@sierraoutfitter.com', CAST(132 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'jbent@cowboy.com', CAST(133 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'scovington@aol.com', CAST(134 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(1 AS Numeric(18, 0)), 'peter@whitehorsewilderness.com', CAST(135 AS Numeric(18, 0)));

INSERT INTO [EMAIL] ([SequenceNbr], [EMailAddress], [FK_CustomerID]) VALUES (CAST(2 AS Numeric(18, 0)), 'kim@whitehorsewilderness.com', CAST(135 AS Numeric(18, 0)));

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(1 AS Numeric(18, 0)), 'Curt Robards', 'Owner', 'cr');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(2 AS Numeric(18, 0)), 'Julie Robard', 'Owner', 'jr');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(3 AS Numeric(18, 0)), 'Kim Greenley', 'Bookkeeper', 'kg');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(4 AS Numeric(18, 0)), 'Fred Bailey', 'Sales Associate', 'fb');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(5 AS Numeric(18, 0)), 'Tim Brow', 'Sales Associate', 'tb');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(6 AS Numeric(18, 0)), 'Jennifer Mazzelli', 'Sales Associate', 'jm');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(7 AS Numeric(18, 0)), 'Theresa Baker', 'Sales Associate', 'tb');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(8 AS Numeric(18, 0)), 'Mike Wentland', 'Technicia', 'mw');

INSERT INTO [EMPLOYEE] ([EmpID], [Name], [Title], [Initials]) VALUES (CAST(9 AS Numeric(18, 0)), 'Bill Crowley', 'Technicia', 'bc');

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(201 AS Numeric(18, 0)), CAST(577 AS Numeric(18, 0)), NULL, CAST(7.79 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(201 AS Numeric(18, 0)), CAST(578 AS Numeric(18, 0)), NULL, CAST(8.19 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(201 AS Numeric(18, 0)), CAST(579 AS Numeric(18, 0)), NULL, CAST(8.59 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(202 AS Numeric(18, 0)), CAST(580 AS Numeric(18, 0)), NULL, CAST(3.27 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(202 AS Numeric(18, 0)), NULL, CAST(2 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(33 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(34 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(229 AS Numeric(18, 0)), NULL, CAST(60 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(229 AS Numeric(18, 0)), NULL, CAST(61 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(229 AS Numeric(18, 0)), NULL, CAST(62 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(230 AS Numeric(18, 0)), NULL, CAST(67 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(230 AS Numeric(18, 0)), NULL, CAST(68 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(230 AS Numeric(18, 0)), NULL, CAST(69 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(230 AS Numeric(18, 0)), NULL, CAST(66 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(231 AS Numeric(18, 0)), NULL, CAST(74 AS Numeric(18, 0)), CAST(135.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(232 AS Numeric(18, 0)), NULL, CAST(76 AS Numeric(18, 0)), CAST(135.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(35 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(36 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(37 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(47 AS Numeric(18, 0)), CAST(65.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(48 AS Numeric(18, 0)), CAST(75.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(49 AS Numeric(18, 0)), CAST(75.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(63 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(64 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(78 AS Numeric(18, 0)), CAST(145.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), NULL, CAST(79 AS Numeric(18, 0)), CAST(150.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(234 AS Numeric(18, 0)), NULL, CAST(77 AS Numeric(18, 0)), CAST(145.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(234 AS Numeric(18, 0)), NULL, CAST(57 AS Numeric(18, 0)), CAST(85.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(235 AS Numeric(18, 0)), NULL, CAST(38 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(236 AS Numeric(18, 0)), NULL, CAST(71 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(211 AS Numeric(18, 0)), CAST(588 AS Numeric(18, 0)), NULL, CAST(1.29 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(221 AS Numeric(18, 0)), CAST(589 AS Numeric(18, 0)), NULL, CAST(11.59 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(236 AS Numeric(18, 0)), CAST(589 AS Numeric(18, 0)), NULL, CAST(23.18 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(203 AS Numeric(18, 0)), NULL, CAST(1 AS Numeric(18, 0)), CAST(110.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(203 AS Numeric(18, 0)), NULL, CAST(8 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(204 AS Numeric(18, 0)), NULL, CAST(17 AS Numeric(18, 0)), CAST(150.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(205 AS Numeric(18, 0)), NULL, CAST(12 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(206 AS Numeric(18, 0)), CAST(579 AS Numeric(18, 0)), NULL, CAST(17.18 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(206 AS Numeric(18, 0)), CAST(583 AS Numeric(18, 0)), NULL, CAST(1.98 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(206 AS Numeric(18, 0)), CAST(587 AS Numeric(18, 0)), NULL, CAST(8.95 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(207 AS Numeric(18, 0)), NULL, CAST(3 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(208 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(208 AS Numeric(18, 0)), NULL, CAST(5 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(209 AS Numeric(18, 0)), NULL, CAST(6 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(210 AS Numeric(18, 0)), NULL, CAST(7 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(211 AS Numeric(18, 0)), NULL, CAST(9 AS Numeric(18, 0)), CAST(65.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(212 AS Numeric(18, 0)), NULL, CAST(13 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(212 AS Numeric(18, 0)), NULL, CAST(15 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(213 AS Numeric(18, 0)), NULL, CAST(10 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(214 AS Numeric(18, 0)), NULL, CAST(11 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(215 AS Numeric(18, 0)), NULL, CAST(14 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(216 AS Numeric(18, 0)), NULL, CAST(16 AS Numeric(18, 0)), CAST(110.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(217 AS Numeric(18, 0)), NULL, CAST(18 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(218 AS Numeric(18, 0)), NULL, CAST(18 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(219 AS Numeric(18, 0)), NULL, CAST(19 AS Numeric(18, 0)), CAST(110.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(220 AS Numeric(18, 0)), NULL, CAST(20 AS Numeric(18, 0)), CAST(75.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(221 AS Numeric(18, 0)), NULL, CAST(22 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(222 AS Numeric(18, 0)), NULL, CAST(23 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(222 AS Numeric(18, 0)), NULL, CAST(24 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(222 AS Numeric(18, 0)), NULL, CAST(21 AS Numeric(18, 0)), CAST(90.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(223 AS Numeric(18, 0)), NULL, CAST(25 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(225 AS Numeric(18, 0)), NULL, CAST(26 AS Numeric(18, 0)), CAST(75.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(226 AS Numeric(18, 0)), NULL, CAST(26 AS Numeric(18, 0)), CAST(75.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(227 AS Numeric(18, 0)), NULL, CAST(28 AS Numeric(18, 0)), CAST(85.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(29 AS Numeric(18, 0)), CAST(75.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(2 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(42 AS Numeric(18, 0)), CAST(65.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(43 AS Numeric(18, 0)), CAST(65.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(27 AS Numeric(18, 0)), CAST(120.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(30 AS Numeric(18, 0)), CAST(135.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(31 AS Numeric(18, 0)), CAST(125.00 AS Numeric(18, 2)));

INSERT INTO [INV_LINE_ITEM] ([LineNbr], [Quantity], [FK_InvoiceNbr], [FK_PartNbr], [FK_StoveNbr], [ExtendedPrice]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(228 AS Numeric(18, 0)), NULL, CAST(32 AS Numeric(18, 0)), CAST(110.00 AS Numeric(18, 2)));

/*
INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(201 AS Numeric(18, 0)), CAST(0x0000909D00000000 AS DateTime), CAST(24.57 AS Numeric(18, 2)), CAST(111 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(207 AS Numeric(18, 0)), CAST(0x000091EB00000000 AS DateTime), CAST(90.00 AS Numeric(18, 2)), CAST(101 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(203 AS Numeric(18, 0)), CAST(0x000091A700000000 AS DateTime), CAST(210.00 AS Numeric(18, 2)), CAST(125 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(233 AS Numeric(18, 0)), CAST(0x000091FD00000000 AS DateTime), CAST(1030.00 AS Numeric(18, 2)), CAST(118 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(202 AS Numeric(18, 0)), CAST(0x000091A700000000 AS DateTime), CAST(123.27 AS Numeric(18, 2)), CAST(111 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(204 AS Numeric(18, 0)), CAST(0x000091A700000000 AS DateTime), CAST(150.00 AS Numeric(18, 2)), CAST(123 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(205 AS Numeric(18, 0)), CAST(0x000091A700000000 AS DateTime), CAST(125.00 AS Numeric(18, 2)), CAST(119 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(206 AS Numeric(18, 0)), CAST(0x000091A800000000 AS DateTime), CAST(28.11 AS Numeric(18, 2)), CAST(125 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(208 AS Numeric(18, 0)), CAST(0x000091EC00000000 AS DateTime), CAST(210.00 AS Numeric(18, 2)), CAST(102 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(209 AS Numeric(18, 0)), CAST(0x000091EC00000000 AS DateTime), CAST(100.00 AS Numeric(18, 2)), CAST(103 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(210 AS Numeric(18, 0)), CAST(0x000091EC00000000 AS DateTime), CAST(125.00 AS Numeric(18, 2)), CAST(104 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(211 AS Numeric(18, 0)), CAST(0x000091EE00000000 AS DateTime), CAST(66.29 AS Numeric(18, 2)), CAST(105 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(212 AS Numeric(18, 0)), CAST(0x000091EE00000000 AS DateTime), CAST(210.00 AS Numeric(18, 2)), CAST(106 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(213 AS Numeric(18, 0)), CAST(0x000091EE00000000 AS DateTime), CAST(120.00 AS Numeric(18, 2)), CAST(112 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(214 AS Numeric(18, 0)), CAST(0x000091EE00000000 AS DateTime), CAST(100.00 AS Numeric(18, 2)), CAST(113 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(215 AS Numeric(18, 0)), CAST(0x000091EF00000000 AS DateTime), CAST(100.00 AS Numeric(18, 2)), CAST(114 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(216 AS Numeric(18, 0)), CAST(0x000091EF00000000 AS DateTime), CAST(110.00 AS Numeric(18, 2)), CAST(114 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(217 AS Numeric(18, 0)), CAST(0x000091EF00000000 AS DateTime), CAST(90.00 AS Numeric(18, 2)), CAST(117 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(218 AS Numeric(18, 0)), CAST(0x000091EF00000000 AS DateTime), CAST(90.00 AS Numeric(18, 2)), CAST(120 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(219 AS Numeric(18, 0)), CAST(0x000091EF00000000 AS DateTime), CAST(110.00 AS Numeric(18, 2)), CAST(118 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(220 AS Numeric(18, 0)), CAST(0x000091EF00000000 AS DateTime), CAST(75.00 AS Numeric(18, 2)), CAST(121 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(221 AS Numeric(18, 0)), CAST(0x000091F000000000 AS DateTime), CAST(131.59 AS Numeric(18, 2)), CAST(122 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(222 AS Numeric(18, 0)), CAST(0x000091F000000000 AS DateTime), CAST(280.00 AS Numeric(18, 2)), CAST(124 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(223 AS Numeric(18, 0)), CAST(0x000091F000000000 AS DateTime), CAST(120.00 AS Numeric(18, 2)), CAST(126 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(225 AS Numeric(18, 0)), CAST(0x000091F000000000 AS DateTime), CAST(75.00 AS Numeric(18, 2)), CAST(127 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(226 AS Numeric(18, 0)), CAST(0x000091F000000000 AS DateTime), CAST(75.00 AS Numeric(18, 2)), CAST(128 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(227 AS Numeric(18, 0)), CAST(0x000091F100000000 AS DateTime), CAST(85.00 AS Numeric(18, 2)), CAST(129 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(228 AS Numeric(18, 0)), CAST(0x000091F300000000 AS DateTime), CAST(875.00 AS Numeric(18, 2)), CAST(130 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(229 AS Numeric(18, 0)), CAST(0x000091F400000000 AS DateTime), CAST(360.00 AS Numeric(18, 2)), CAST(131 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(230 AS Numeric(18, 0)), CAST(0x000091F600000000 AS DateTime), CAST(495.00 AS Numeric(18, 2)), CAST(132 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(231 AS Numeric(18, 0)), CAST(0x000091F800000000 AS DateTime), CAST(135.00 AS Numeric(18, 2)), CAST(133 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(232 AS Numeric(18, 0)), CAST(0x000091F900000000 AS DateTime), CAST(135.00 AS Numeric(18, 2)), CAST(134 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(234 AS Numeric(18, 0)), CAST(0x000091FF00000000 AS DateTime), CAST(230.00 AS Numeric(18, 2)), CAST(117 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(235 AS Numeric(18, 0)), CAST(0x000091FF00000000 AS DateTime), CAST(100.00 AS Numeric(18, 2)), CAST(128 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));

INSERT INTO [INVOICE] ([InvoiceNbr], [InvoiceDt], [TotalPrice], [FK_CustomerID], [FK_EmpID]) VALUES (CAST(236 AS Numeric(18, 0)), CAST(0x0000920100000000 AS DateTime), CAST(148.18 AS Numeric(18, 2)), CAST(125 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)));
*/

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(567 AS Numeric(18, 0)), 'Left Flange', CAST(0.59 AS Numeric(18, 2)), CAST(1.79 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(568 AS Numeric(18, 0)), 'Right Flange', CAST(0.66 AS Numeric(18, 2)), CAST(1.89 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(569 AS Numeric(18, 0)), 'Style A Burner', CAST(5.77 AS Numeric(18, 2)), CAST(10.79 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(570 AS Numeric(18, 0)), 'Style B Burner', CAST(6.12 AS Numeric(18, 2)), CAST(12.89 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(571 AS Numeric(18, 0)), 'Leg A', CAST(0.88 AS Numeric(18, 2)), CAST(1.99 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(572 AS Numeric(18, 0)), 'Leg B', CAST(0.94 AS Numeric(18, 2)), CAST(2.19 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(573 AS Numeric(18, 0)), 'Cover Piece', CAST(0.74 AS Numeric(18, 2)), CAST(1.65 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(574 AS Numeric(18, 0)), 'Regulator', CAST(2.09 AS Numeric(18, 2)), CAST(4.49 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(575 AS Numeric(18, 0)), 'Grill A', CAST(1.87 AS Numeric(18, 2)), CAST(3.99 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(576 AS Numeric(18, 0)), 'Grill B', CAST(1.96 AS Numeric(18, 2)), CAST(4.59 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(577 AS Numeric(18, 0)), 'Tank A', CAST(3.55 AS Numeric(18, 2)), CAST(7.79 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(578 AS Numeric(18, 0)), 'Tank B', CAST(3.65 AS Numeric(18, 2)), CAST(8.19 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(579 AS Numeric(18, 0)), 'Fuel Valve', CAST(3.58 AS Numeric(18, 2)), CAST(8.59 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(580 AS Numeric(18, 0)), 'Widget', CAST(0.44 AS Numeric(18, 2)), CAST(1.09 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(581 AS Numeric(18, 0)), 'Hard Case', CAST(3.66 AS Numeric(18, 2)), CAST(9.69 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(582 AS Numeric(18, 0)), 'Cap', CAST(0.22 AS Numeric(18, 2)), CAST(0.49 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(583 AS Numeric(18, 0)), 'Connection Strap', CAST(0.44 AS Numeric(18, 2)), CAST(0.99 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(584 AS Numeric(18, 0)), 'Widget B', CAST(0.57 AS Numeric(18, 2)), CAST(1.19 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(585 AS Numeric(18, 0)), 'Widget C', CAST(0.58 AS Numeric(18, 2)), CAST(1.25 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(586 AS Numeric(18, 0)), 'Wingnut', CAST(0.11 AS Numeric(18, 2)), CAST(0.19 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(587 AS Numeric(18, 0)), 'Tension Rod', CAST(0.89 AS Numeric(18, 2)), CAST(1.79 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(588 AS Numeric(18, 0)), 'Whatsit', CAST(0.64 AS Numeric(18, 2)), CAST(1.29 AS Numeric(18, 2)));

INSERT INTO [PART] ([PartNbr], [Description], [Cost], [SalesPrice]) VALUES (CAST(589 AS Numeric(18, 0)), 'Flexi Case', CAST(4.19 AS Numeric(18, 2)), CAST(11.59 AS Numeric(18, 2)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '111-264-8797', CAST(111 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '324-423-7891', CAST(112 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '456-871-1326', CAST(113 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '912-451-7813', CAST(114 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '215-456-7841', CAST(115 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '641-456-7813', CAST(116 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '548-541-4513', CAST(117 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '941-223-5744', CAST(118 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '457-632-4561', CAST(119 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '506-451-8521', CAST(120 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '557-551-6214', CAST(121 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '224-601-1002', CAST(122 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '102-489-0140', CAST(123 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '145-123-6116', CAST(124 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '587-325-9130', CAST(125 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '231-354-6458', CAST(126 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '411-327-3010', CAST(127 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '714-325-3265', CAST(128 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '551-361-0005', CAST(129 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '223-541-6304', CAST(114 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '224-514-7510', CAST(117 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '365-489-2567', CAST(122 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('C', '369-364-1025', CAST(126 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('C', '455-654-8701', CAST(112 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('C', '229-541-0320', CAST(114 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '487-835-1657', CAST(130 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '487-835-1658', CAST(130 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '158-454-4896', CAST(131 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '158-454-4897', CAST(131 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '652-845-1322', CAST(132 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '652-845-1233', CAST(132 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '552-541-5321', CAST(133 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '721-862-8652', CAST(134 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('P', '563-561-5612', CAST(135 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('F', '563-561-5613', CAST(135 AS Numeric(18, 0)));

INSERT INTO [PHONE] ([Type], [PhoneNbr], [FK_CustomerID]) VALUES ('C', '563-561-5614', CAST(135 AS Numeric(18, 0)));

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (601, 1, 14.7500, 567, 25);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (601, 2, 16.5000, 568, 25);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (601, 3, 57.7000, 569, 10);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (602, 1, 33.0000, 580, 75);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (602, 2, 366.0000, 581, 100);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (603, 1, 15.4000, 582, 70);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (604, 1, 19.9500, 584, 35);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (604, 2, 13.9200, 585, 24);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (604, 3, 16.5000, 586, 150);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (604, 4, 44.5000, 587, 50);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (605, 1, 106.5600, 573, 144);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (605, 2, 343.6800, 579, 96);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (606, 1, 61.2000, 570, 10);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (606, 2, 80.7800, 569, 14);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (607, 1, 42.6000, 577, 12);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (607, 2, 87.6000, 578, 24);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (607, 3, 214.8000, 579, 60);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (607, 4, 37.4000, 575, 20);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (607, 5, 39.2000, 576, 20);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (608, 1, 161.1000, 579, 45);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (609, 1, 63.3600, 583, 144);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (609, 2, 31.6800, 582, 144);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (609, 3, 63.3600, 571, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (610, 1, 47.0000, 572, 50);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (610, 2, 44.4000, 573, 60);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (610, 3, 22.0000, 580, 50);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (610, 4, 55.0000, 586, 500);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (611, 1, 22.2500, 587, 25);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (611, 2, 207.7200, 569, 36);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (611, 3, 220.3200, 570, 36);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (612, 1, 8.8500, 567, 15);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (612, 2, 9.9000, 568, 15);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (612, 3, 26.4000, 571, 30);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (612, 4, 28.2000, 572, 30);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (613, 1, 73.4400, 570, 12);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (613, 2, 42.9600, 579, 12);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (613, 3, 25.0800, 574, 12);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (614, 1, 114.0000, 584, 200);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (614, 2, 55.0000, 586, 500);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (614, 3, 110.0000, 580, 250);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (614, 4, 87.0000, 585, 150);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (615, 1, 32.0000, 588, 50);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (615, 2, 732.0000, 581, 200);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (615, 3, 1047.5000, 589, 250);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (615, 4, 11.0000, 586, 100);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (616, 1, 274.5000, 581, 75);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (616, 2, 515.5200, 579, 144);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (616, 3, 269.2800, 575, 144);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (616, 4, 31.6800, 582, 144);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (617, 1, 7.9200, 586, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (617, 2, 41.0400, 584, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (617, 3, 64.0800, 587, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (617, 4, 42.4800, 567, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (617, 5, 301.6800, 589, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (617, 6, 15.8400, 582, 72);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (618, 1, 88.0000, 571, 100);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (618, 2, 94.0000, 572, 100);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (618, 3, 355.0000, 577, 100);

INSERT INTO [PO_LINE_ITEM] ([FK_PONbr], [LineNbr], [ExtendedPrice], [Fk_PartNbr], [Quantity]) VALUES (618, 4, 365.0000, 578, 100);

/*
INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(601 AS Numeric(18, 0)), CAST(0x0000906000000000 AS DateTime), '1-10 Net 30', CAST(801 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(602 AS Numeric(18, 0)), CAST(0x0000906000000000 AS DateTime), 'Net 30', CAST(801 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(603 AS Numeric(18, 0)), CAST(0x0000906300000000 AS DateTime), '2-10 Net 30', CAST(801 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(604 AS Numeric(18, 0)), CAST(0x0000906800000000 AS DateTime), 'Net 45', CAST(802 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(605 AS Numeric(18, 0)), CAST(0x0000906800000000 AS DateTime), '1-10 Net 30', CAST(803 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(606 AS Numeric(18, 0)), CAST(0x0000907E00000000 AS DateTime), 'Net 30', CAST(801 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(607 AS Numeric(18, 0)), CAST(0x0000908900000000 AS DateTime), 'Net 30', CAST(804 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(608 AS Numeric(18, 0)), CAST(0x0000908A00000000 AS DateTime), '1-10 Net 30', CAST(802 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(609 AS Numeric(18, 0)), CAST(0x0000908F00000000 AS DateTime), 'Net 30', CAST(803 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(610 AS Numeric(18, 0)), CAST(0x000090A400000000 AS DateTime), 'Net 30', CAST(801 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(611 AS Numeric(18, 0)), CAST(0x000090A500000000 AS DateTime), 'Net 45', CAST(804 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(612 AS Numeric(18, 0)), CAST(0x000090A600000000 AS DateTime), '1-10 Net 30', CAST(802 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(613 AS Numeric(18, 0)), CAST(0x000090A700000000 AS DateTime), 'Net 30', CAST(803 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(614 AS Numeric(18, 0)), CAST(0x000090A800000000 AS DateTime), 'Net 30', CAST(802 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(615 AS Numeric(18, 0)), CAST(0x0000915400000000 AS DateTime), 'Net 30', CAST(805 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(616 AS Numeric(18, 0)), CAST(0x0000917300000000 AS DateTime), 'Net 60', CAST(806 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(617 AS Numeric(18, 0)), CAST(0x0000917C00000000 AS DateTime), 'Net 30', CAST(807 AS Numeric(18, 0)));

INSERT INTO [PURCHASE_ORDER] ([PONbr], [OrderDt], [Terms], [FK_SupplierNbr]) VALUES (CAST(618 AS Numeric(18, 0)), CAST(0x0000919500000000 AS DateTime), 'Net 45', CAST(808 AS Numeric(18, 0)));
*/

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1121, 1, 568, 1, 1.8900, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1121, 2, 0, 0, 30.0000, CAST(30 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1122, 1, 570, 1, 12.8900, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1122, 2, 0, 0, 40.0000, CAST(40 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1123, 1, 579, 1, 8.5900, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1123, 2, 0, 0, 25.0000, CAST(25 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1124, 1, 586, 1, 0.1900, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1124, 2, 580, 2, 2.1800, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1124, 3, 575, 1, 11.9700, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1124, 4, 0, 0, 36.0000, CAST(36 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1125, 1, 574, 1, 4.4900, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1126, 1, 574, 1, 4.4900, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1126, 2, 588, 2, 2.5800, CAST(0 AS Numeric(18, 0)));

INSERT INTO [REPAIR_LINE_ITEM] ([FK_RepairNbr], [LineNbr], [FK_PartNbr], [Quantity], [ExtendedPrice], [Labor Charge]) VALUES (1126, 3, 0, NULL, NULL, CAST(45 AS Numeric(18, 0)));

/*
INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (1, 'FiredNow       ', '3              ', CAST(0x909B0000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (2, 'FiredAlways    ', '1              ', CAST(0x909D0000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (3, 'FiredNow       ', '1              ', CAST(0x90A00000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (4, 'FiredNow       ', '1              ', CAST(0x90A00000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (5, 'FiredAlways    ', '1              ', CAST(0x8F380000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (6, 'FiredNow       ', '2              ', CAST(0x90C80000 AS SmallDateTime), 'RED', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (7, 'FiredAlways    ', '2              ', CAST(0x90A00000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (8, 'FiredNow       ', '2              ', CAST(0x90CD0000 AS SmallDateTime), 'BLUE', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (9, 'FiredAtCamp    ', '1              ', CAST(0x90CD0000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (10, 'FiredAlways    ', '1              ', CAST(0x8F650000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (11, 'FiredNow       ', '2              ', CAST(0x91040000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (12, 'FiredAlways    ', '2              ', CAST(0x91060000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (13, 'FiredNow       ', '1              ', CAST(0x91090000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (14, 'FiredNow       ', '2              ', CAST(0x91090000 AS SmallDateTime), 'BLUE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (15, 'FiredAlways    ', '1              ', CAST(0x8FA10000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (16, 'FiredNow       ', '3              ', CAST(0x914F0000 AS SmallDateTime), 'BLUE', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (17, 'FiredAlways    ', '5              ', CAST(0x91510000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (18, 'FiredNow       ', '1              ', CAST(0x91540000 AS SmallDateTime), 'BLUE', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (19, 'FiredNow       ', '3              ', CAST(0x91540000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (20, 'FiredAtCamp    ', '2              ', CAST(0x8FEC0000 AS SmallDateTime), 'GRAY', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (21, 'FiredNow       ', '1              ', CAST(0x919C0000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (22, 'FiredAlways    ', '1              ', CAST(0x91860000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (23, 'FiredNow       ', '2              ', CAST(0x91890000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (24, 'FiredNow       ', '1              ', CAST(0x91890000 AS SmallDateTime), 'GREE', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (25, 'FiredAlways    ', '1              ', CAST(0x918E0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (26, 'FiredAtCamp    ', '2              ', CAST(0x91900000 AS SmallDateTime), 'GRAY', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (27, 'FiredAlways    ', '1              ', CAST(0x91900000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (28, 'FiredAtCamp    ', '3              ', CAST(0x91910000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (29, 'FiredAtCamp    ', '2              ', CAST(0x91910000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (30, 'FiredAlways    ', '3              ', CAST(0x91920000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (31, 'FiredAlways    ', '2              ', CAST(0x91930000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (32, 'FiredNow       ', '3              ', CAST(0x91950000 AS SmallDateTime), 'BLUE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (33, 'FiredNow       ', '1              ', CAST(0x91980000 AS SmallDateTime), 'BLUE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (34, 'FiredNow       ', '1              ', CAST(0x91980000 AS SmallDateTime), 'BLUE', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (35, 'FiredNow       ', '1              ', CAST(0x91980000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (36, 'FiredNow       ', '1              ', CAST(0x91980000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (37, 'FiredNow       ', '2              ', CAST(0x91980000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (38, 'FiredNow       ', '2              ', CAST(0x91980000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (39, 'FiredNow       ', '2              ', CAST(0x91980000 AS SmallDateTime), 'GREE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (40, 'FiredNow       ', '3              ', CAST(0x91980000 AS SmallDateTime), 'RED', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (41, 'FiredNow       ', '3              ', CAST(0x91980000 AS SmallDateTime), 'BLUE', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (42, 'FiredAtCamp    ', '1              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (43, 'FiredAtCamp    ', '1              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (44, 'FiredAtCamp    ', '1              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (45, 'FiredAtCamp    ', '1              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (46, 'FiredAtCamp    ', '1              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (47, 'FiredAtCamp    ', '1              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (48, 'FiredAtCamp    ', '2              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (49, 'FiredAtCamp    ', '2              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (50, 'FiredAtCamp    ', '2              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (51, 'FiredAtCamp    ', '2              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (52, 'FiredAtCamp    ', '2              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (53, 'FiredAtCamp    ', '2              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (54, 'FiredAtCamp    ', '3              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (55, 'FiredAtCamp    ', '3              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (56, 'FiredAtCamp    ', '3              ', CAST(0x91990000 AS SmallDateTime), 'GRAY', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (57, 'FiredAtCamp    ', '3              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (58, 'FiredAtCamp    ', '3              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (59, 'FiredAtCamp    ', '3              ', CAST(0x91990000 AS SmallDateTime), 'BLACK', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (60, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (61, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (62, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (63, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (64, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (65, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (66, 'FiredAlways    ', '1              ', CAST(0x919A0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (67, 'FiredAlways    ', '2              ', CAST(0x919A0000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (68, 'FiredAlways    ', '2              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (69, 'FiredAlways    ', '2              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (70, 'FiredAlways    ', '2              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (71, 'FiredAlways    ', '2              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (72, 'FiredAlways    ', '2              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (73, 'FiredAlways    ', '3              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (74, 'FiredAlways    ', '3              ', CAST(0x919C0000 AS SmallDateTime), 'SILVER', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (75, 'FiredAlways    ', '3              ', CAST(0x919C0000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (76, 'FiredAlways    ', '3              ', CAST(0x919C0000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (77, 'FiredAlways    ', '4              ', CAST(0x919C0000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (78, 'FiredAlways    ', '4              ', CAST(0x919C0000 AS SmallDateTime), 'GOLD', 9);

INSERT INTO [STOVE] ([SerialNumber], [Type], [Version], [DateOfManufacture], [Color], [FK_EmpId]) VALUES (79, 'FiredAlways    ', '5              ', CAST(0x919C0000 AS SmallDateTime), 'GOLD', 8);

INSERT INTO [STOVE_REPAIR] ([RepairNbr], [FK_StoveNbr], [RepairDt], [Description], [Cost], [FK_CustomerID], [FK_EmpID]) VALUES (1121, 3, CAST(0x92220000 AS SmallDateTime), 'Broken flange', CAST(30.88 AS Numeric(7, 2)), 101, 8);

INSERT INTO [STOVE_REPAIR] ([RepairNbr], [FK_StoveNbr], [RepairDt], [Description], [Cost], [FK_CustomerID], [FK_EmpID]) VALUES (1122, 7, CAST(0x92280000 AS SmallDateTime), 'Burner wo''t light', CAST(53.99 AS Numeric(7, 2)), 104, 9);

INSERT INTO [STOVE_REPAIR] ([RepairNbr], [FK_StoveNbr], [RepairDt], [Description], [Cost], [FK_CustomerID], [FK_EmpID]) VALUES (1123, 12, CAST(0x92030000 AS SmallDateTime), 'Valve broke', CAST(33.55 AS Numeric(7, 2)), 119, 9);

INSERT INTO [STOVE_REPAIR] ([RepairNbr], [FK_StoveNbr], [RepairDt], [Description], [Cost], [FK_CustomerID], [FK_EmpID]) VALUES (1124, 11, CAST(0x924B0000 AS SmallDateTime), 'Stripped wingnut', CAST(46.07 AS Numeric(7, 2)), 113, 8);

INSERT INTO [STOVE_REPAIR] ([RepairNbr], [FK_StoveNbr], [RepairDt], [Description], [Cost], [FK_CustomerID], [FK_EmpID]) VALUES (1125, 22, CAST(0x924C0000 AS SmallDateTime), 'Fuel clog', CAST(6.59 AS Numeric(7, 2)), 122, 8);

INSERT INTO [STOVE_REPAIR] ([RepairNbr], [FK_StoveNbr], [RepairDt], [Description], [Cost], [FK_CustomerID], [FK_EmpID]) VALUES (1126, 32, CAST(0x924C0000 AS SmallDateTime), 'Fuel clog', CAST(6.59 AS Numeric(7, 2)), 130, 9);
*/

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAlways    ', '1              ', CAST(120 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAlways    ', '2              ', CAST(125 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAlways    ', '3              ', CAST(135 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAlways    ', '5              ', CAST(150 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAtCamp    ', '1              ', CAST(65 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAtCamp    ', '2              ', CAST(75 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAtCamp    ', '3              ', CAST(85 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredNow       ', '1              ', CAST(90 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredNow       ', '2              ', CAST(100 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredNow       ', '3              ', CAST(110 AS Decimal(18, 0)));

INSERT INTO [STOVE_TYPE] ([Type], [Version], [Price]) VALUES ('FiredAlways', '4', CAST(145 AS Decimal(18, 0)));

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(801 AS Numeric(18, 0)), 'Acme Metal Works', 'Bob Jones', '456-231-7406', '456-123-8033', '112 SW Pfaffle Avenue', 'Los Angeles', 'CA');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(802 AS Numeric(18, 0)), 'Market Packaging', 'Jill Tripp', '221-235-4301', '221-645-1358', '2145 Braxton Blvd', 'Richmond', 'VA');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(803 AS Numeric(18, 0)), '3N ', 'Jasper Montana', '365-412-5647', '321-845-6321', '394 Northrup Street', 'Portland', 'OR');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(804 AS Numeric(18, 0)), 'Industrial Components', 'Scott Maupi', '321-743-9812', '365-741-8610', '32564 Main Street', 'Tacoma', 'WA');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(805 AS Numeric(18, 0)), 'Albany Forms', 'Garrett Jenkins', '541-895-9631', '541-741-8611', '222 Benton Road', 'Albany', 'OR');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(806 AS Numeric(18, 0)), 'Keller Industries', 'James Keller', '541-888-4132', '541-888-4133', '2289 Lane Street', 'Eugene', 'OR');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(807 AS Numeric(18, 0)), 'Boston Supply', 'Jack Waters', '325-896-9541', '325-896-9543', '856 Jefferson Way', 'Richmond', 'VA');

INSERT INTO [SUPPLIER] ([SupplierNbr], [Name], [SalesRep], [RepPhoneNumber], [CSPhoneNumber], [Address], [City], [State]) VALUES (CAST(808 AS Numeric(18, 0)), 'Stevens Fasteners', 'Jane Washbur', '632-547-8621', '632-547-8622', '45655 Lake Drive', 'Twin Falls', 'ID');

