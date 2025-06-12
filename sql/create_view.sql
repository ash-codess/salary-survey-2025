CREATE VIEW dbo.vw_SalarySurveyResults2025

AS 

/*_____________________________________________________________
CREATED BY:		Astha
CREATED DATE:	08/06/2025
CREATED FOR:	Brent Ozar Salary Survey Results
DESCRIPTION:	Returns Data From Brent Ozar's Salary Survey Results
				Data Source (Thanks Brent!): https://www.brentozar.com/archive/2025/01/announcing-the-2025-data-professional-salary-survey-results/____________________________________________________________
*/

SELECT 
	  [ID]
      ,[ImportDate]
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
  FROM dbo.SalarySurveyResults2025;
