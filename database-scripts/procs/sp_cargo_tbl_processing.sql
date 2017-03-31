

USE [integrations]
GO
/****** Object:  StoredProcedure [integrations].[sp_Cargo_tbl_processing]   **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE [sp_Cargo_tbl_processing]

/****** Object:  StoredProcedure [sp_Cargo_tbl_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the tbl table of Cargo Carrying ships>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [sp_Cargo_tbl_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING [sp_Cargo_tbl_processing]'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO [T_CARGO_TBL_LAST_PORT_OF_CALL](MMSI, LRNO, Port_ID, CountryCode, Country, LastPortOfCall,
	       ArrDate, SailDate, PortCallId,REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,
		   REC_UPDATED_BY,SOURCE_FILE_NAME)
	SELECT MMSI, LRNO, Port_ID, CountryCode, Country, LastPortOfCall, ArrDate, SailDate, PortCallId,    
		   GETDATE(),'SYSTEM',GETDATE(),'SYSTEM',@currentFileName
    FROM [T_STG_CARGO_TBL_LAST_PORT_OF_CALL];
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE [T_STG_CARGO_TBL_LAST_PORT_OF_CALL];
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



