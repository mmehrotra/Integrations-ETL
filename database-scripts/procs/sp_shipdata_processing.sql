USE [integrations]
GO
/****** Object:  StoredProcedure [dbo].[[sp_shipdata_processing]]    Script Date: 04/08/2017 18:05:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DROP PROCEDURE sp_shipdata_deadships_processing

/****** Object:  StoredProcedure [sp_shipdata_processing]  ******/
-- =============================================
-- Author:		<Mohit Mehrotra>
-- Description:	<Procedure for inserting the data into the main table of Ship data>
-- Schema name : Schema name has been defined as integrations
-- =============================================
CREATE PROCEDURE [dbo].[sp_shipdata_processing] @currentFileName varchar(255)
AS

BEGIN TRY
	print 'BEGINING [sp_shipdata_processing]'
	print SYSDATETIME()
	print @currentFileName

	INSERT INTO T_SHIP_DATA(LRIMOShipNo,ShipName,ShipStatus,ShipStatusEffectiveDate,ShiptypeLevel5,Deadweight,GrossTonnage,DateOfBuild,FlagName,
	    MaritimeMobileServiceIdentityMMSINumber,CallSign,BreadthExtreme,BreadthMoulded,LengthBetweenPerpendicularsLBP,LengthOverallLOA,LengthRegistered,
		Draught,LiquidCapacity,GrainCapacity,BaleCapacity,TEU,NumberofCars,PassengerCapacity,InsulatedCapacity,GroupBeneficialOwner,GroupBeneficialOwnerCompanyCode,
		GroupBeneficialOwnerCountryOfControl,GroupBeneficialOwnerCountryofDomicile,GroupBeneficialOwnerCountryOfRegistration,Operator,OperatorCompanyCode,
		OperatorCountryOfControl,OperatorCountryofDomicileName,OperatorCountryOfRegistration,RegisteredOwner,RegisteredOwnerCode,RegisteredOwnerCountryOfControl,
		RegisteredOwnerCountryofDomicile,RegisteredOwnerCountryOfRegistration,ShipManager,ShipManagerCompanyCode,ShipManagerCountryOfControl,ShipManagerCountryofDomicileName,
		ShipManagerCountryOfRegistration,TechnicalManager,TechnicalManagerCode,TechnicalManagerCountryOfControl,TechnicalManagerCountryOfDomicile,
		TechnicalManagerCountryOfRegistration,ContractDate,NewconstructionEntryDate,CountryOfBuild,Speedmax,Speedservice,LightDisplacementTonnage,ShipBuilder,
		YardNumber,ShipbuilderSubContractor ,LastUpdateDate,ShiptypeGroup,StatCode5,ClassificationSociety,ClassNarrative,NumberofTanks,NumberofHolds,NumberofHatches,
		NumberofRamps,GearDescriptiveNarrative,PumpingCapacityM3,REC_CREATION_TIME,REC_CREATED_BY,REC_UPDATED_TIME,REC_UPDATED_BY,SOURCE_FILE_NAME)
	SELECT CONVERT(BIGINT,LRIMOShipNo), ShipName, ShipStatus, CONVERT(DATE,ShipStatusEffectiveDate), ShiptypeLevel5, CONVERT(BIGINT,Deadweight), CONVERT(BIGINT,GrossTonnage),
	DateOfBuild, FlagName, MaritimeMobileServiceIdentityMMSINumber, CallSign, CONVERT(FLOAT,BreadthExtreme), CONVERT(FLOAT,BreadthMoulded), CONVERT(FLOAT,LengthBetweenPerpendicularsLBP),
	CONVERT(FLOAT,LengthOverallLOA), CONVERT(FLOAT,LengthRegistered), CONVERT(FLOAT,Draught), CONVERT(BIGINT,LiquidCapacity), CONVERT(BIGINT,GrainCapacity), CONVERT(BIGINT,BaleCapacity),
	CONVERT(BIGINT,TEU), CONVERT(BIGINT,NumberofCars), CONVERT(BIGINT,PassengerCapacity), CONVERT(BIGINT,InsulatedCapacity), GroupBeneficialOwner, CONVERT(BIGINT,GroupBeneficialOwnerCompanyCode),
	GroupBeneficialOwnerCountryOfControl, GroupBeneficialOwnerCountryofDomicile, GroupBeneficialOwnerCountryOfRegistration, Operator, CONVERT(BIGINT,OperatorCompanyCode),
	OperatorCountryOfControl, OperatorCountryofDomicileName, OperatorCountryOfRegistration, RegisteredOwner, CONVERT(BIGINT,RegisteredOwnerCode), RegisteredOwnerCountryOfControl,
	RegisteredOwnerCountryofDomicile, RegisteredOwnerCountryOfRegistration, ShipManager, CONVERT(BIGINT,ShipManagerCompanyCode), ShipManagerCountryOfControl, 
	ShipManagerCountryofDomicileName, ShipManagerCountryOfRegistration, TechnicalManager, CONVERT(BIGINT,TechnicalManagerCode), TechnicalManagerCountryOfControl, 
	TechnicalManagerCountryOfDomicile, TechnicalManagerCountryOfRegistration, CONVERT(DATE,ContractDate), NewconstructionEntryDate, CountryOfBuild, CONVERT(FLOAT,Speedmax),
	CONVERT(FLOAT,Speedservice), CONVERT(BIGINT,LightDisplacementTonnage), ShipBuilder, CONVERT(BIGINT,YardNumber), ShipbuilderSubContractor , CONVERT(DATETIME,LastUpdateDate),
	ShiptypeGroup, StatCode5, ClassificationSociety, ClassNarrative, NumberofTanks, CONVERT(BIGINT,NumberofHolds), CONVERT(BIGINT,NumberofHatches), CONVERT(BIGINT,NumberofRamps),
	GearDescriptiveNarrative, CONVERT(BIGINT,PumpingCapacityM3),GETDATE(),'SYSTEM',GETDATE(),'SYSTEM',@currentFileName
	FROM T_STG_SHIP_DATA;
	
	-- Truncating the staging table after the insertion.
	TRUNCATE TABLE T_STG_SHIP_DATA;
		
	COMMIT;
	
 END TRY

BEGIN CATCH 
  DECLARE @errorMessage VARCHAR(5000)
  SELECT @errorMessage = ERROR_MESSAGE()
END CATCH



