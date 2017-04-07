USE [integrations]
GO
/****** Object:  StoredProcedure [dbo].[sp_shipdata_tbl_shptypcd_processing]    Script Date: 03/31/2017 17:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE sp_shipdata_tbl_shptypcd_processing

/****** Object:  StoredProcedure [sp_shipdata_tbl_shptypcd_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the shipdata tbl ship type code>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [sp_shipdata_tbl_shptypcd_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING sp_shipdata_tbl_shptypcd_processing'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO T_SHPDT_TBL_SHPTYPCD( StatCode5, ShiptypeLevel5, Level4Code, ShipTypeLevel4, Level3Code, ShipTypeLevel3, Level2Code, ShipTypeLevel2, ShipTypeLevel1Code, ShiptypeLevel1,
	HullType, SubGroup, SubType, HullTypeCode, SubGroupCode, SubTypeCode, REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,
		   REC_UPDATED_BY,SOURCE_FILE_NAME )
	SELECT StatCode5, ShiptypeLevel5, Level4Code, ShipTypeLevel4, Level3Code, ShipTypeLevel3, Level2Code, ShipTypeLevel2, ShipTypeLevel1Code, ShiptypeLevel1,
	HullType, SubGroup, SubType, HullTypeCode, SubGroupCode, SubTypeCode, GETDATE(),'SYSTEM',GETDATE(),'SYSTEM',@currentFileName
	FROM T_STG_SHPDT_TBL_SHPTYPCD;
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE T_STG_SHPDT_TBL_SHPTYPCD;
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



