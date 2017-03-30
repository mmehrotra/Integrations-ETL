USE [integrations]
GO
/****** Object:  StoredProcedure [integrations].[sp_Cargo_carrying_ship_ETL]   **/
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

	INSERT INTO T_CARGO_CARRYING_SHIPS(LRIMOShipNo, Latitude, Longitude, ShipName, ShipType,
           Draught, Beam, Length, CallSign, MMSI, Speed, Heading,
           Destination, DestinationTidied, ETA, AdditionalInfo,
		   MovementDateTime, MovementID, MoveStatus,TEU,
		   REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,
		   REC_UPDATED_BY,SOURCE_FILE_NAME)
	SELECT LRIMOShipNo, Latitude, Longitude, ShipName, ShipType,
           Draught, Beam, Length, CallSign, MMSI, Speed, Heading,
           Destination, DestinationTidied, ETA, AdditionalInfo,
		   MovementDateTime, MovementID, MoveStatus,TEU,
		   GETDATE(),'SYSTEM',GETDATE(),
		   'SYSTEM',@currentFileName
    FROM T_STG_CARGO_CARRYING_SHIPS;
	
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



