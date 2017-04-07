USE [integrations]
GO
/****** Object:  StoredProcedure [dbo].[sp_shipdata_tbl_cmpfulldtl_parentcd_processing]    Script Date: 03/31/2017 17:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE sp_shipdata_tbl_cmpfulldtl_parentcd_processing

/****** Object:  StoredProcedure [sp_shipdata_tbl_cmpfulldtl_parentcd_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the shipdata tbl capacities table>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [sp_shipdata_tbl_cmpfulldtl_parentcd_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING sp_shipdata_tbl_cmpfulldtl_parentcd_processing'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO T_SHPDT_TBL_CMPFULLDTL_PARENTCODE
	(OWCODE ,ShortCompanyName, CountryName, TownName, Telephone, Telex ,Emailaddress ,Website ,CareOfCode ,RoomFloorBuilding1 ,RoomFloorBuilding2, 
	RoomFloorBuilding3 ,POBox, StreetNumber, Street, PrePostcode, PostPostcode, LastChangeDate, parentCompany, NationalityofRegistration, 
	NationalityofControl, CompanyStatus, FullCompanyName, FullAddress, Facsimile, REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,REC_UPDATED_BY,SOURCE_FILE_NAME)
	SELECT CONVERT(BIGINT,OWCODE) ,ShortCompanyName, CountryName, TownName, Telephone, Telex ,Emailaddress ,Website ,CONVERT(BIGINT,CareOfCode) ,RoomFloorBuilding1 ,RoomFloorBuilding2, 
	RoomFloorBuilding3 ,POBox, StreetNumber, Street, PrePostcode, PostPostcode, CONVERT(DATE,LastChangeDate), CONVERT(BIGINT,parentCompany), NationalityofRegistration, 
	NationalityofControl, CompanyStatus, FullCompanyName, FullAddress, Facsimile, GETDATE(),'SYSTEM',GETDATE(),'SYSTEM',@currentFileName
	FROM T_STG_SHPDT_TBL_CMPFULLDTL_PARENTCODE;
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE T_STG_SHPDT_TBL_CMPFULLDTL_PARENTCODE;
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



