USE [integrations]
GO
/****** Object:  StoredProcedure [dbo].[sp_offshore_misc_processing]    Script Date: 04/01/2017 23:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE sp_offshore_misc_processing

/****** Object:  StoredProcedure [sp_offshore_misc_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the main table of Offshore Misc>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [dbo].[sp_offshore_misc_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING sp_offshore_misc_processing'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO T_OFFSHORE_MISC(LRIMOShipNo, Latitude, Longitude, ShipName, ShipType,
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
    FROM T_STG_OFFSHORE_MISC;
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE T_STG_OFFSHORE_MISC;
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



