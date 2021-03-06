USE [integrations]
GO
/****** Object:  StoredProcedure [dbo].[sp_Cargo_carrying_ship_processing]    Script Date: 03/31/2017 17:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE sp_Cargo_carrying_ship_processing

/****** Object:  StoredProcedure [sp_Cargo_carrying_ship_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the main table of Cargo Carrying ships>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [sp_Cargo_carrying_ship_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING sp_Cargo_carrying_ship_processing'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO T_CARGO_CARRYING_SHIP(LRIMOShipNo, Latitude, Longitude, ShipName, ShipType,
           Draught, Beam, Length, CallSign, MMSI, Speed, Heading,
           Destination, DestinationTidied, ETA, AdditionalInfo,
		   MovementDateTime, MovementID, MoveStatus,TEU,
		   REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,
		   REC_UPDATED_BY,SOURCE_FILE_NAME)
	SELECT CONVERT(BIGINT,LRIMOShipNo),CONVERT(FLOAT,Latitude), CONVERT(FLOAT,Longitude),
	       ShipName, ShipType,CONVERT(FLOAT,Draught),CONVERT(FLOAT,Beam), CONVERT(FLOAT,Length),
	       CallSign, CONVERT(BIGINT,MMSI), CONVERT(FLOAT,Speed), CONVERT(FLOAT,Heading),
           Destination, DestinationTidied, CONVERT(DATETIME,ETA), AdditionalInfo,
		   CONVERT(DATETIME,MovementDateTime), MovementID, MoveStatus,TEU,
		   GETDATE(),'SYSTEM',GETDATE(),
		   'SYSTEM',@currentFileName
    FROM T_STG_CARGO_CARRYING_SHIPS;
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE T_STG_CARGO_CARRYING_SHIPS;
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



