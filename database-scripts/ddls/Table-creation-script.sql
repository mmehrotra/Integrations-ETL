-- Table creation scripts

-- DROP TABLE [T_STG_CARGO_CARRYING_SHIPS];
-- TRUNCATE TABLE T_STG_CARGO_CARRYING_SHIPS;
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
-- TRUNCATE TABLE T_CARGO_CARRYING_SHIPS;
-- Script for creation of the main tables
-- TODO :: create the primary key and other constraints
CREATE TABLE [T_CARGO_CARRYING_SHIPS] (
    [LRIMOShipNo] varchar(255) PRIMARY KEY,
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
