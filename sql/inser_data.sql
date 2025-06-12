DECLARE @CurrentDateTime DATETIME = GETDATE();

INSERT INTO dbo.SalarySurveyResults2025
(
	ImportDate
	,[SurveyYear]
	,[Timestamp]
      ,[SalaryUSD]
      ,[Country]
      ,[PostalCode]
      ,[PrimaryDatabase]
      ,[YearsWithThisDatabase]
      ,[OtherDatabases]
      ,[EmploymentStatus]
      ,[JobTitle]
      ,[ManageStaff]
      ,[YearsWithThisTypeOfJob]
      ,[HowManyCompanies]
      ,[OtherPeopleOnYourTeam]
      ,[DatabaseServers]
      ,[PopulationOfLargestCityWithin20Miles]
      ,[EmploymentSector]
      ,[CareerPlansThisYear]
      ,[Gender]
      ,[Counter]
)

SELECT @CurrentDateTime AS ImportDate
	  ,[SurveyYear]
	  ,[Timestamp]
	  ,[SalaryUSD]
      ,[Country]
      ,[PostalCode]
      ,[PrimaryDatabase]
      ,[YearsWithThisDatabase]
      ,[OtherDatabases]
      ,[EmploymentStatus]
      ,[JobTitle]
      ,[ManageStaff]
      ,[YearsWithThisTypeOfJob]
      ,[HowManyCompanies]
      ,[OtherPeopleOnYourTeam]
      ,[DatabaseServers]
      ,[PopulationOfLargestCityWithin20Miles]
      ,[EmploymentSector]
      ,[CareerPlansThisYear]
      ,[Gender]
      ,[Counter]
  FROM demo.dbo.Data_Professional_Salary_Survey_Responses AS [dpssri]
  ORDER BY [dpssri].[Timestamp] ASC;

   /* Adding Primary Key  - Make sure your table is not a heap*/
ALTER TABLE dbo.SalarySurveyResults2025
ADD CONSTRAINT PK_SalarySurveyResults2025 PRIMARY KEY CLUSTERED (ID);

UPDATE STATISTICS dbo.SalarySurveyResults2025;