/* How many enteries per survey year? */
 
SELECT DISTINCT [SurveyYear] 
FROM dbo.SalarySurveyResults2025
ORDER BY [SurveyYear];

/* How many records per year */

SELECT DISTINCT [SurveyYear], COUNT(DISTINCT ID) AS UniqueRecords 
FROM dbo.SalarySurveyResults2025
GROUP BY [SurveyYear]
ORDER BY [SurveyYear];

/* Graphical representation of number of records per year */

SELECT DISTINCT [SurveyYear], 
COUNT(DISTINCT ID) AS UniqueRecords,
REPLICATE('|', COUNT(DISTINCT [ID]/50)) [UniqueRecords_BAR]
FROM dbo.SalarySurveyResults2025
GROUP BY [SurveyYear]
ORDER BY [SurveyYear];

/* What is the average salary in USD for each country in the dataset? */

SELECT DISTINCT
	   [Country]
	  ,COUNT(DISTINCT [ID]) AS [UniqueEntries]
	  ,CAST(MIN([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
	  ,CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
	  ,CAST(MAX([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
FROM dbo.SalarySurveyResults2025
GROUP BY [Country]
ORDER BY [Country] ASC;

/* How many participants are employed in each employment sector and there averyage salary in USD? */

SELECT DISTINCT
	   [EmploymentSector]
	  ,COUNT(DISTINCT [ID]) AS [UniqueEntries]
	  ,CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
FROM dbo.SalarySurveyResults2025
GROUP BY [EmploymentSector]
ORDER BY CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) DESC;

/*  How many respondents are there for each primary database type? */

SELECT DISTINCT
	   [PrimaryDatabase]
	  ,COUNT(DISTINCT [ID]) AS [UniqueEntries]
	  ,CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
FROM dbo.SalarySurveyResults2025
GROUP BY [PrimaryDatabase]
ORDER BY CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) DESC;

/*  What is the distribution of job titles among the respondents?*/


SELECT DISTINCT
	   [JobTitle]
	  ,COUNT(DISTINCT [ID]) AS [UniqueEntries]
	  ,CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
FROM dbo.SalarySurveyResults2025
GROUP BY [JobTitle]
ORDER BY CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) DESC;


/*  How many respondents manage staff, and what is their average salary?*/


SELECT DISTINCT
	   ManageStaff
	  ,COUNT(DISTINCT [ID]) AS [UniqueEntries]
	  ,CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) AS AverageSalaryUSD
FROM dbo.SalarySurveyResults2025
GROUP BY ManageStaff
ORDER BY CAST(AVG([SalaryUSD]) AS DECIMAL(18,2)) DESC;


/* What is the average number of years respondents have worked with their primary database? */


SELECT DISTINCT PrimaryDatabase, AVG([YearsWithThisDatabase]) AS AvgYearsWithDB
FROM dbo.SalarySurveyResults2025
GROUP BY PrimaryDatabase
ORDER BY AvgYearsWithDB DESC;
 
 
 /* What is the average salary (in INR) of respondents from India? */
SELECT COUNT(DISTINCT [ID]) AS [UniqueEntries],
       MIN(SalaryUSD * 83) AS AverageSalaryINR,
       AVG(SalaryUSD * 83) AS AverageSalaryINR,
       MAX(SalaryUSD * 83) AS AverageSalaryINR
FROM dbo.SalarySurveyResults2025
WHERE Country = 'India';



/* How does the average salary in India compare to other top-responding countries? */
SELECT 
    Country,
    COUNT(*) AS Respondents,
    AVG(SalaryUSD) AS AvgSalaryUSD,
    CASE 
        WHEN Country = 'India' THEN AVG(SalaryUSD * 83)
        ELSE NULL 
    END AS AvgSalaryINR
FROM 
    dbo.SalarySurveyResults2025
GROUP BY 
    Country
ORDER BY 
    Respondents DESC;
   
/* Which databases are most commonly used by Indian respondents? */
SELECT PrimaryDatabase, COUNT(*) AS UserCount
FROM dbo.SalarySurveyResults2025
WHERE Country = 'India'
GROUP BY PrimaryDatabase
ORDER BY UserCount DESC;

/* Among Indian respondents, which job titles are the most common? */

SELECT DISTINCT JobTitle, COUNT(*) As UserCount
FROM dbo.SalarySurveyResults2025 
Where Country = 'India'
GROUP BY JobTitle
ORDER BY UserCount DESC;

/*  What is the average number of years of experience for Indian professionals? */
 
SELECT YearsWithThisTypeOfJob ,YearsWithThisDatabase, PrimaryDatabase, COUNT(*) As UserCount
FROM dbo.SalarySurveyResults2025 
Where Country = 'India'
GROUP BY YearsWithThisTypeOfJob , YearsWithThisDatabase, PrimaryDatabase 
ORDER BY UserCount DESC;

 
 /* How many Indian respondents manage staff vs not, and their average salaries? */

SELECT DISTINCT
	   ManageStaff
	  ,COUNT(DISTINCT [ID]) AS [UniqueEntries]
	  ,AVG(SalaryUSD * 83) AS AverageSalaryINR
FROM dbo.SalarySurveyResults2025
WHERE Country ='India'
GROUP BY ManageStaff;
 
/* Top 3 cities (postal codes) with most survey responses from India */

SELECT 
    PostalCode, 
    COUNT(*) AS Count
FROM dbo.SalarySurveyResults2025
WHERE 
    Country = 'India'
GROUP BY 
    PostalCode
ORDER BY 
    Count DESC;
   
/* Compare average salary by gender within India */
   
SELECT 
    Gender,
    COUNT(*) AS Respondents,
    MIN(SalaryUSD * 83) AS MinSalaryINR,
    AVG(SalaryUSD * 83) AS AverageSalaryINR,
    MAX(SalaryUSD * 83) AS MaxSalaryINR
FROM dbo.SalarySurveyResults2025
WHERE Country = 'India'
GROUP BY 
    Gender;
   
/*  Among Indian respondents, which employment sectors report the highest average salaries? */
   
SELECT 
    EmploymentSector,
    COUNT(*) AS Count,
    AVG(SalaryUSD * 83) AS AvgSalaryINR
FROM dbo.SalarySurveyResults2025
WHERE Country = 'India'
GROUP BY 
    EmploymentSector
ORDER BY 
    AvgSalaryINR DESC;

   
/* Most common career plans this year among Indian respondents */
SELECT 
    CareerPlansThisYear,
    COUNT(*) AS Count
FROM dbo.SalarySurveyResults2025
WHERE Country = 'India'
GROUP BY 
    CareerPlansThisYear
ORDER BY 
    Count DESC;
   
/* Most common career plans this year among respondents */
SELECT 
    CareerPlansThisYear,
    Country,
    COUNT(*) AS Count
FROM dbo.SalarySurveyResults2025
GROUP BY 
    CareerPlansThisYear,
    Country 
ORDER BY Count DESC;


/* Is there a correlation between years of experience and salary among Indian professionals? */
SELECT 
    CAST(YearsWithThisTypeOfJob AS INT) AS YearsExperience,
    AVG(SalaryUSD * 83) AS AvgSalaryINR,
    COUNT(*) AS Respondents
FROM dbo.SalarySurveyResults2025
WHERE Country = 'India' 
    AND ISNUMERIC(YearsWithThisTypeOfJob) = 1
GROUP BY 
    CAST(YearsWithThisTypeOfJob AS INT)
ORDER BY 
     AvgSalaryINR desc;
