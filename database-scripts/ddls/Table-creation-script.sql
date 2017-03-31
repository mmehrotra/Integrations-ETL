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

-- DROP TABLE T_CARGO_CARRYING_SHIPS;
-- TRUNCATE TABLE T_CARGO_CARRYING_SHIP;
-- SELECT * FROM T_CARGO_CARRYING_SHIP;
-- Script for creation of the main tables
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_CARGO_CARRYING_SHIP] (
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
    [TEU] varchar(255),
    [REC_CREATION_TIME] DATETIME,
    [REC_CREATED_BY] VARCHAR(255),
    [REC_UPDATED_TIME] DATETIME,
    [REC_UPDATED_BY] VARCHAR(255),
    [SOURCE_FILE_NAME] VARCHAR(255)
);

-- Staging table for Cargo's TblLastPortOfCall
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
