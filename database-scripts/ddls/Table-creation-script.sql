-- Table creation scripts

-- DROP TABLE [T_STG_CARGO_CARRYING_SHIPS];
-- TRUNCATE TABLE T_STG_CARGO_CARRYING_SHIPS;
-- SELECT * FROM [T_STG_CARGO_CARRYING_SHIPS];
-- Script for creation of staging table for cargo carrying ships
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_STG_CARGO_CARRYING_SHIPS] (
    [LRIMOShipNo] varchar(255),
    [Latitude] varchar(255),
    [Longitude] varchar(255),
    [ShipName] varchar(255),
    [ShipType] varchar(255),
    [Draught] varchar(255),
    [Beam] varchar(255),
    [Length] varchar(255),
    [CallSign] varchar(255),
    [MMSI] varchar(255),
    [Speed] varchar(255),
    [Heading] varchar(255),
    [Destination] varchar(255),
    [DestinationTidied] varchar(255),
    [ETA] varchar(255),
    [AdditionalInfo] varchar(255),
    [MovementDateTime] varchar(255),
    [MovementID] varchar(255),
    [MoveStatus] varchar(255),
    [TEU] varchar(255)
);

-- DROP TABLE T_CARGO_CARRYING_SHIP;
-- TRUNCATE TABLE T_CARGO_CARRYING_SHIP;
-- SELECT * FROM T_CARGO_CARRYING_SHIP;
-- Script for creation of the main tables
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_CARGO_CARRYING_SHIP] (
	[ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [LRIMOShipNo] bigint,
    [Latitude] float,
    [Longitude] float,
    [ShipName] varchar(255),
    [ShipType] varchar(255),
    [Draught] float,
    [Beam] float,
    [Length] float,
    [CallSign] varchar(255),
    [MMSI] bigint,
    [Speed] float,
    [Heading] float,
    [Destination] varchar(255),
    [DestinationTidied] varchar(255),
    [ETA] DATETIME,
    [AdditionalInfo] varchar(255),
    [MovementDateTime] DATETIME,
    [MovementID] bigint,
    [MoveStatus] varchar(255),
    [TEU] varchar(255),
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)
);

-- Staging table for Cargo's TblLastPortOfCall
-- TRUNCATE TABLE [T_STG_CARGO_TBL_LAST_PORT_OF_CALL];
-- SELECT * FROM [T_STG_CARGO_TBL_LAST_PORT_OF_CALL];
-- DROP TABLE [T_STG_CARGO_TBL_LAST_PORT_OF_CALL]
CREATE TABLE [T_STG_CARGO_TBL_LAST_PORT_OF_CALL] (
    [MMSI] varchar(255),
    [LRNO] varchar(255),
    [Port_ID] varchar(255),
    [CountryCode] varchar(255),
    [Country] varchar(255),
    [LastPortOfCall] varchar(255),
    [ArrDate] varchar(255),
    [SailDate] varchar(255),
    [PortCallId] varchar(255)   
);

-- DROP TABLE [T_CARGO_TBL_LAST_PORT_OF_CALL]
-- TRUNCATE TABLE T_CARGO_TBL_LAST_PORT_OF_CALL
-- SELECT * FROM T_CARGO_TBL_LAST_PORT_OF_CALL
-- Main table for Cargo's TblLastPortOfCall
CREATE TABLE [T_CARGO_TBL_LAST_PORT_OF_CALL] (
    [ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [MMSI] bigint,
    [LRNO] bigint,
    [Port_ID] bigint,
    [CountryCode] varchar(255),
    [Country] varchar(255),
    [LastPortOfCall] varchar(255),
    [ArrDate] DATETIME,
    [SailDate] DATETIME,
    [PortCallId] BIGINT,
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)   
);

-- OFFSHORE TABLES 
---------------------------------------------------------------------------


-- DROP TABLE [T_STG_OFFSHORE_MISC];
-- TRUNCATE TABLE T_STG_OFFSHORE_MISC;
-- SELECT * FROM [T_STG_OFFSHORE_MISC];
-- Script for creation of staging table for offshore misc
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_STG_OFFSHORE_MISC] (
    [LRIMOShipNo] varchar(255),
    [Latitude] varchar(255),
    [Longitude] varchar(255),
    [ShipName] varchar(255),
    [ShipType] varchar(255),
    [Draught] varchar(255),
    [Beam] varchar(255),
    [Length] varchar(255),
    [CallSign] varchar(255),
    [MMSI] varchar(255),
    [Speed] varchar(255),
    [Heading] varchar(255),
    [Destination] varchar(255),
    [DestinationTidied] varchar(255),
    [ETA] varchar(255),
    [AdditionalInfo] varchar(255),
    [MovementDateTime] varchar(255),
    [MovementID] varchar(255),
    [MoveStatus] varchar(255),
    [TEU] varchar(255)
);

-- DROP TABLE T_OFFSHORE_MISC;
-- TRUNCATE TABLE T_OFFSHORE_MISC;
-- SELECT * FROM T_OFFSHORE_MISC;
-- Script for creation of the main tables
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_OFFSHORE_MISC] (
	[ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [LRIMOShipNo] bigint,
    [Latitude] float,
    [Longitude] float,
    [ShipName] varchar(255),
    [ShipType] varchar(255),
    [Draught] float,
    [Beam] float,
    [Length] float,
    [CallSign] varchar(255),
    [MMSI] bigint,
    [Speed] float,
    [Heading] float,
    [Destination] varchar(255),
    [DestinationTidied] varchar(255),
    [ETA] DATETIME,
    [AdditionalInfo] varchar(255),
    [MovementDateTime] DATETIME,
    [MovementID] bigint,
    [MoveStatus] varchar(255),
    [TEU] varchar(255),
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)
);

-- Staging table for Cargo's TblLastPortOfCall
-- TRUNCATE TABLE [T_STG_OFFSHORE_TBL_LAST_PORT_OF_CALL];
-- SELECT * FROM T_STG_OFFSHORE_TBL_LAST_PORT_OF_CALL
-- DROP TABLE [T_STG_OFFSHORE_TBL_LAST_PORT_OF_CALL]
CREATE TABLE [T_STG_OFFSHORE_TBL_LAST_PORT_OF_CALL] (
    [MMSI] varchar(255),
    [LRNO] varchar(255),
    [Port_ID] varchar(255),
    [CountryCode] varchar(255),
    [Country] varchar(255),
    [LastPortOfCall] varchar(255),
    [ArrDate] varchar(255),
    [SailDate] varchar(255),
    [PortCallId] varchar(255)   
);

-- DROP TABLE [T_OFFSHORE_TBL_LAST_PORT_OF_CALL]
-- TRUNCATE TABLE T_OFFSHORE_TBL_LAST_PORT_OF_CALL
-- SELECT * FROM T_OFFSHORE_TBL_LAST_PORT_OF_CALL
-- Main table for Offshore's TblLastPortOfCall
CREATE TABLE [T_OFFSHORE_TBL_LAST_PORT_OF_CALL] (
    [ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [MMSI] bigint,
    [LRNO] bigint,
    [Port_ID] bigint,
    [CountryCode] varchar(255),
    [Country] varchar(255),
    [LastPortOfCall] varchar(255),
    [ArrDate] DATETIME,
    [SailDate] DATETIME,
    [PortCallId] BIGINT,
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)   
);

-------------------------------------------------------------------------------------------------------
-- Ship Data tables
---------------------------------------------------------------------------

-- DROP TABLE [T_STG_SHIP_DATA];
-- TRUNCATE TABLE T_STG_SHIP_DATA;
-- SELECT * FROM [T_STG_SHIP_DATA];
-- Script for creation of staging table for ship data dead ship
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_STG_SHIP_DATA] (
    [LRIMOShipNo] varchar(255),
    [ShipName] varchar(255),
    [ShipStatus] varchar(255),
    [ShipStatusEffectiveDate] varchar(255),
    [ShiptypeLevel5] varchar(255),
    [Deadweight] varchar(255),
    [GrossTonnage] varchar(255),
    [DateOfBuild] varchar(255),
    [FlagName] varchar(255),
    [MaritimeMobileServiceIdentityMMSINumber] varchar(255),
    [CallSign] varchar(255),
    [BreadthExtreme] varchar(255),
    [BreadthMoulded] varchar(255),
    [LengthBetweenPerpendicularsLBP] varchar(255),
    [LengthOverallLOA] varchar(255),
    [LengthRegistered] varchar(255),
    [Draught] varchar(255),
    [LiquidCapacity] varchar(255),
    [GrainCapacity] varchar(255),
    [BaleCapacity] varchar(255),
    [GasCapacity] varchar(255),
    [TEU] varchar(255),
    [NumberofCars] varchar(255),
    [PassengerCapacity] varchar(255),
    [InsulatedCapacity] varchar(255),
    [GroupBeneficialOwner] varchar(255),
    [GroupBeneficialOwnerCompanyCode] varchar(255),
    [GroupBeneficialOwnerCountryOfControl] varchar(255),
    [GroupBeneficialOwnerCountryofDomicile] varchar(255),
    [GroupBeneficialOwnerCountryOfRegistration] varchar(255),
    [Operator] varchar(255),
    [OperatorCompanyCode] varchar(255),
    [OperatorCountryOfControl] varchar(255),
    [OperatorCountryofDomicileName] varchar(255),
    [OperatorCountryOfRegistration] varchar(255),
    [RegisteredOwner] varchar(255),
    [RegisteredOwnerCode] varchar(255),
    [RegisteredOwnerCountryOfControl] varchar(255),
    [RegisteredOwnerCountryofDomicile] varchar(255),
    [RegisteredOwnerCountryOfRegistration] varchar(255),
    [ShipManager] varchar(255),
    [ShipManagerCompanyCode] varchar(255),
    [ShipManagerCountryOfControl] varchar(255),
    [ShipManagerCountryofDomicileName] varchar(255),
    [ShipManagerCountryOfRegistration] varchar(255),
    [TechnicalManager] varchar(255),
    [TechnicalManagerCode] varchar(255),
    [TechnicalManagerCountryOfControl] varchar(255),
    [TechnicalManagerCountryOfDomicile] varchar(255),
    [TechnicalManagerCountryOfRegistration] varchar(255),
    [ContractDate] varchar(255),
    [NewconstructionEntryDate] varchar(255),
    [CountryOfBuild] varchar(255),
    [Speedmax] varchar(255),
    [Speedservice] varchar(255),
    [LightDisplacementTonnage] varchar(255),
    [ShipBuilder] varchar(255),
    [YardNumber] varchar(255),
    [ShipbuilderSubContractor]  varchar(255),
    [LastUpdateDate] varchar(255),
    [ShiptypeGroup] varchar(255),
    [StatCode5] varchar(255),
    [ClassificationSociety] varchar(255),
    [ClassNarrative] varchar(255),
    [NumberofTanks] varchar(255),
    [NumberofHolds] varchar(255),
    [NumberofHatches] varchar(255),
    [NumberofRamps] varchar(255),
    [GearDescriptiveNarrative] varchar(255),
    [PumpingCapacityM3]  varchar(255)
);

-- DROP TABLE T_SHIP_DATA;
-- TRUNCATE TABLE T_SHIP_DATA;
-- SELECT * FROM T_SHIP_DATA;
-- Script for creation of the main tables
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_SHIP_DATA] (
	[ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [LRIMOShipNo] bigint,
    [ShipName] varchar(255),
    [ShipStatus] varchar(255),
    [ShipStatusEffectiveDate] DATE,
    [ShiptypeLevel5] varchar(255),
    [Deadweight] bigint,
    [GrossTonnage] bigint,
    [DateOfBuild] bigint,
    [FlagName] varchar(255),
    [MaritimeMobileServiceIdentityMMSINumber] varchar(255),
    [CallSign] varchar(20),
    [BreadthExtreme] float,
    [BreadthMoulded] float,
    [LengthBetweenPerpendicularsLBP] float,
    [LengthOverallLOA] float,
    [LengthRegistered] float,
    [Draught] float,
    [LiquidCapacity] bigint,
    [GrainCapacity] bigint,
    [BaleCapacity] bigint,
    [GasCapacity] bigint,
    [TEU] bigint,
    [NumberofCars] bigint,
    [PassengerCapacity] bigint,
    [InsulatedCapacity] bigint,
    [GroupBeneficialOwner] varchar(255),
    [GroupBeneficialOwnerCompanyCode] bigint,
    [GroupBeneficialOwnerCountryOfControl] varchar(255),
    [GroupBeneficialOwnerCountryofDomicile] varchar(255),
    [GroupBeneficialOwnerCountryOfRegistration] varchar(255),
    [Operator] varchar(255),
    [OperatorCompanyCode] bigint,
    [OperatorCountryOfControl] varchar(255),
    [OperatorCountryofDomicileName] varchar(255),
    [OperatorCountryOfRegistration] varchar(255),
    [RegisteredOwner] varchar(255),
    [RegisteredOwnerCode] bigint,
    [RegisteredOwnerCountryOfControl] varchar(255),
    [RegisteredOwnerCountryofDomicile] varchar(255),
    [RegisteredOwnerCountryOfRegistration] varchar(255),
    [ShipManager] varchar(255),
    [ShipManagerCompanyCode] bigint,
    [ShipManagerCountryOfControl] varchar(255),
    [ShipManagerCountryofDomicileName] varchar(255),
    [ShipManagerCountryOfRegistration] varchar(255),
    [TechnicalManager] varchar(255),
    [TechnicalManagerCode] bigint,
    [TechnicalManagerCountryOfControl] varchar(255),
    [TechnicalManagerCountryOfDomicile] varchar(255),
    [TechnicalManagerCountryOfRegistration] varchar(255),
    [ContractDate] DATE,
    [NewconstructionEntryDate] varchar(255),
    [CountryOfBuild] varchar(255),
    [Speedmax] float,
    [Speedservice] float,
    [LightDisplacementTonnage] bigint,
    [ShipBuilder] varchar(255),
    [YardNumber] varchar(20),
    [ShipbuilderSubContractor]  varchar(255),
    [LastUpdateDate] DATETIME,
    [ShiptypeGroup] varchar(255),
    [StatCode5] varchar(255),
    [ClassificationSociety] varchar(255),
    [ClassNarrative] varchar(255),
    [NumberofTanks] varchar(255),
    [NumberofHolds] bigint,
    [NumberofHatches] bigint,
    [NumberofRamps] bigint,
    [GearDescriptiveNarrative] varchar(255),
    [PumpingCapacityM3]  bigint,
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)
);

-- Staging table for ShipData's TblCapacities
-- TRUNCATE TABLE [T_STG_SHIPDATA_TBL_CAPACITIES];
-- SELECT * FROM T_STG_SHIPDATA_TBL_CAPACITIES
-- DROP TABLE [T_STG_SHIPDATA_TBL_CAPACITIES]
CREATE TABLE [T_STG_SHIPDATA_TBL_CAPACITIES] (
    [LRNO] varchar(255),
    [Bale] varchar(255),
    [Horsepower] varchar(255),
    [NumberOfBarges] varchar(255),
    [BollardPull] varchar(255),
    [NumberOfCars] varchar(255),
    [GasCapacity] varchar(255),
    [GrainCapacity] varchar(255),
    [IndicatedHorsepower] varchar(255),
    [LiquidCapacity] varchar(255),
    [NumberOfPassengers] varchar(255),
    [NumberRefrigeratedContainers] varchar(255),
    [NumberOfTEU] varchar(255),   
    [NumberOfTrucks] varchar(255),
    [NumberOfVehicles] varchar(255),
    [NumberOfRailWagons] varchar(255)  
);

-- DROP TABLE [[T_SHIPDATA_TBL_CAPACITIES]]
-- TRUNCATE TABLE [T_SHIPDATA_TBL_CAPACITIES]
-- SELECT * FROM [T_SHIPDATA_TBL_CAPACITIES]
-- Main table for Offshore's TblLastPortOfCall
CREATE TABLE [T_SHIPDATA_TBL_CAPACITIES] (
    [ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [LRNO] bigint,
    [Bale] bigint,
    [Horsepower] bigint,
    [NumberOfBarges] bigint,
    [BollardPull] bigint,
    [NumberOfCars] bigint,
    [GasCapacity] bigint,
    [GrainCapacity] bigint,
    [IndicatedHorsepower] bigint,
    [LiquidCapacity] bigint,
    [NumberOfPassengers] bigint,
    [NumberRefrigeratedContainers] bigint,
    [NumberOfTEU] bigint,   
    [NumberOfTrucks] bigint,
    [NumberOfVehicles] bigint,
    [NumberOfRailWagons] bigint,  
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)   
);

-- Staging table for ShipData's Tbl Company Full Detail and parent code
-- TRUNCATE TABLE [T_STG_SHPDT_TBL_CMPFULLDTL_PARENTCODE];
-- SELECT * FROM T_STG_SHPDT_TBL_CMPFULLDTL_PARENTCODE
-- DROP TABLE [T_STG_SHPDT_TBL_CMPFULLDTL_PARENTCODE]
CREATE TABLE T_STG_SHPDT_TBL_CMPFULLDTL_PARENTCODE (
    [OWCODE] varchar(255),
    [ShortCompanyName] VARCHAR(255) , 
	[CountryName] VARCHAR(255) , 
	[TownName] VARCHAR(255) , 
	[Telephone] VARCHAR(255) ,	
	[Telex] VARCHAR(255) , 
	[Emailaddress] VARCHAR(255) , 
	[Website] VARCHAR(255) , 
	[CareOfCode] VARCHAR(255) , 
	[RoomFloorBuilding1] VARCHAR(255) , 
	[RoomFloorBuilding2] VARCHAR(255) , 
	[RoomFloorBuilding3] VARCHAR(255) , 
	[POBox] VARCHAR(255) , 
	[StreetNumber] VARCHAR(255) , 
	[Street] VARCHAR(255) , 
	[PrePostcode] VARCHAR(255) , 
	[PostPostcode] VARCHAR(255) , 
	[LastChangeDate] VARCHAR(255) , 
	[parentCompany] VARCHAR(255) , 
	[NationalityofRegistration] VARCHAR(255) , 
	[NationalityofControl] VARCHAR(255) , 
	[CompanyStatus] VARCHAR(255) , 
	[FullCompanyName] VARCHAR(255) , 
	[FullAddress] VARCHAR(255) , 
	[Facsimile] VARCHAR(255)
);

-- DROP TABLE [[T_SHPDT_TBL_CMPFULLDTL_PARENTCODE]]
-- TRUNCATE TABLE [T_SHPDT_TBL_CMPFULLDTL_PARENTCODE]
-- SELECT * FROM [T_SHPDT_TBL_CMPFULLDTL_PARENTCODE]
-- Main table for ShipData's Company full detail and parent code
CREATE TABLE T_SHPDT_TBL_CMPFULLDTL_PARENTCODE (
    [ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [OWCODE] bigint,
    [ShortCompanyName] VARCHAR(255) , 
	[CountryName] VARCHAR(255) , 
	[TownName] VARCHAR(255) , 
	[Telephone] VARCHAR(255) ,	
	[Telex] VARCHAR(255) , 
	[Emailaddress] VARCHAR(255) , 
	[Website] VARCHAR(255) , 
	[CareOfCode] bigint , 
	[RoomFloorBuilding1] VARCHAR(255) , 
	[RoomFloorBuilding2] VARCHAR(255) , 
	[RoomFloorBuilding3] VARCHAR(255) , 
	[POBox] VARCHAR(255) , 
	[StreetNumber] VARCHAR(255) , 
	[Street] VARCHAR(255) , 
	[PrePostcode] VARCHAR(255) , 
	[PostPostcode] VARCHAR(255) , 
	[LastChangeDate] DATE , 
	[parentCompany] BIGINT , 
	[NationalityofRegistration] VARCHAR(255) , 
	[NationalityofControl] VARCHAR(255) , 
	[CompanyStatus] VARCHAR(255) , 
	[FullCompanyName] VARCHAR(255) , 
	[FullAddress] VARCHAR(255) , 
	[Facsimile] VARCHAR(255),  
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)   
);

-- Staging table for ShipData's TblShipTypeCodes
-- TRUNCATE TABLE [T_STG_SHPDT_TBL_SHPTYPCD];
-- SELECT * FROM T_STG_SHPDT_TBL_SHPTYPCD
-- DROP TABLE [T_STG_SHPDT_TBL_SHPTYPCD]
CREATE TABLE T_STG_SHPDT_TBL_SHPTYPCD (
    [StatCode5] VARCHAR(255) , 
	[ShiptypeLevel5] VARCHAR(255) , 
	[Level4Code] VARCHAR(255) , 
	[ShipTypeLevel4] VARCHAR(255) , 
	[Level3Code] VARCHAR(255) , 
	[ShipTypeLevel3] VARCHAR(255) , 
	[Level2Code] VARCHAR(255) , 
	[ShipTypeLevel2] VARCHAR(255) , 
	[ShipTypeLevel1Code] VARCHAR(255) , 
	[ShiptypeLevel1] VARCHAR(255) , 
	[HullType] VARCHAR(255) , 
	[SubGroup] VARCHAR(255) , 
	[SubType] VARCHAR(255) , 
	[HullTypeCode] VARCHAR(255),
	[SubGroupCode] VARCHAR(255) , 
	[SubTypeCode]  VARCHAR(255) 
);

-- DROP TABLE [[T_STG_SHPDT_TBL_SHPTYPCD]]
-- TRUNCATE TABLE [T_STG_SHPDT_TBL_SHPTYPCD]
-- SELECT * FROM [T_SHPDT_TBL_SHPTYPCD]
-- Main table for ShipData's Tbl Ship type codes
CREATE TABLE T_SHPDT_TBL_SHPTYPCD (
    [ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [StatCode5] VARCHAR(20) , 
	[ShiptypeLevel5] VARCHAR(255) , 
	[Level4Code] VARCHAR(20) , 
	[ShipTypeLevel4] VARCHAR(255) , 
	[Level3Code] VARCHAR(20) , 
	[ShipTypeLevel3] VARCHAR(255) , 
	[Level2Code] VARCHAR(20) , 
	[ShipTypeLevel2] VARCHAR(255) , 
	[ShipTypeLevel1Code] VARCHAR(20) , 
	[ShiptypeLevel1] VARCHAR(255) , 
	[HullType] VARCHAR(255) , 
	[SubGroup] VARCHAR(255) , 
	[SubType] VARCHAR(255) , 
	[HullTypeCode] VARCHAR(20),
	[SubGroupCode] VARCHAR(20) , 
	[SubTypeCode]  VARCHAR(20) ,  
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)   
);


-- Staging table for ShipData's TblSpecialFeature
-- TRUNCATE TABLE T_STG_SHPDT_TBL_SPLFEAT
-- SELECT * FROM T_STG_SHPDT_TBL_SPLFEAT
-- DROP TABLE [T_STG_SHPDT_TBL_SPLFEAT]
CREATE TABLE T_STG_SHPDT_TBL_SPLFEAT (
    [LRNO] VARCHAR(255) , 
	[Sequence] VARCHAR(255) , 
	[SpecialFeature] VARCHAR(255) , 
	[SpecialFeatureCode] VARCHAR(255)
);

-- DROP TABLE [[T_SHPDT_TBL_SPLFEAT]]
-- TRUNCATE TABLE [T_SHPDT_TBL_SPLFEAT]
-- SELECT * FROM [T_SHPDT_TBL_SPLFEAT]
-- Main table for ShipData's Tbl Special Feature
CREATE TABLE T_SHPDT_TBL_SPLFEAT (
    [ID] bigint IDENTITY(1,1) PRIMARY KEY,
    [LRNO] bigint , 
	[Sequence] bigint, 
	[SpecialFeature] VARCHAR(255) , 
	[SpecialFeatureCode] VARCHAR(20),  
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)   
);