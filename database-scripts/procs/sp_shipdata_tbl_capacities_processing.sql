USE [integrations]
GO
/****** Object:  StoredProcedure [dbo].[sp_shipdata_deadships_processing]    Script Date: 03/31/2017 17:09:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE sp_shipdata_tbl_capacities_processing

/****** Object:  StoredProcedure [sp_shipdata_tbl_capacities_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the shipdata tbl capacities table>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [sp_shipdata_tbl_capacities_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING sp_shipdata_tbl_capacities_processing'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO T_SHIPDATA_TBL_CAPACITIES(LRNO ,Bale ,Horsepower ,NumberOfBarges ,BollardPull ,NumberOfCars ,GasCapacity ,GrainCapacity ,IndicatedHorsepower ,LiquidCapacity ,NumberOfPassengers ,NumberRefrigeratedContainers ,NumberOfTEU,   
NumberOfTrucks ,NumberOfVehicles ,NumberOfRailWagons ,REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,REC_UPDATED_BY,SOURCE_FILE_NAME)
	SELECT CONVERT(BIGINT,LRNO) ,CONVERT(BIGINT,Bale) ,CONVERT(BIGINT,Horsepower) ,CONVERT(BIGINT,NumberOfBarges) ,CONVERT(BIGINT,BollardPull) ,CONVERT(BIGINT,NumberOfCars) ,CONVERT(BIGINT,GasCapacity) ,CONVERT(BIGINT,GrainCapacity) ,
	CONVERT(BIGINT,IndicatedHorsepower) ,CONVERT(BIGINT,LiquidCapacity) ,CONVERT(BIGINT,NumberOfPassengers) ,CONVERT(BIGINT,NumberRefrigeratedContainers),
	CONVERT(BIGINT,NumberOfTEU), CONVERT(BIGINT,NumberOfTrucks) , CONVERT(BIGINT,NumberOfVehicles) , CONVERT(BIGINT,NumberOfRailWagons) ,
	GETDATE(),'SYSTEM',GETDATE(),'SYSTEM',@currentFileName
	FROM T_STG_SHIPDATA_TBL_CAPACITIES;
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE T_STG_SHIPDATA_TBL_CAPACITIES;
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



