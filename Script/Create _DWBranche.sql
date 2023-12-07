ALTER view [dbo].[_DWBranche] as 

SELECT [NAME] as BrancheName
      ,[GROUPID]  as BrancheAlternativeKey
      ,[DATAAREAID] as CompanyName
	  ,dateadd(HOUR,2, MODIFIEDDATETIME	) as MODIFIEDDATETIME
  FROM [dbo].[COMMISSIONSALESGROUP]