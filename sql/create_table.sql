CREATE TABLE dbo.SalarySurveyResults2025
(
     [ID] INT IDENTITY(1,1) 
	,ImportDate DATETIME 
	,[SurveyYear]				INT
	,[Timestamp]				DATE
    ,[SalaryUSD]				DECIMAL(18,2)
    ,[Country]					NVARCHAR(200)
    ,[PostalCode]				VARCHAR(100)
    ,[PrimaryDatabase]			VARCHAR(100)
    ,[YearsWithThisDatabase]	INT
    ,[OtherDatabases]			VARCHAR(500)
    ,[EmploymentStatus]			VARCHAR(100)
    ,[JobTitle]					VARCHAR(200)
    ,[ManageStaff]				VARCHAR(10)
    ,[YearsWithThisTypeOfJob]	VARCHAR(10)
    ,[HowManyCompanies]			VARCHAR(100)
    ,[OtherPeopleOnYourTeam]	VARCHAR(20)
    ,[DatabaseServers]			VARCHAR(20)
    ,[PopulationOfLargestCityWithin20Miles] VARCHAR(40)
    ,[EmploymentSector]			VARCHAR(40)
    ,[CareerPlansThisYear]		VARCHAR(60)
    ,[Gender]					VARCHAR(40)
    ,[Counter]					INT

);