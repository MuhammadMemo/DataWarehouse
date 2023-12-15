
alter view [dbo].[_DWEmp]  as 
select EMPLID,d.NAME,e.DATAAREAID as Companyname from EMPLTABLE	   e
left join 	  DirPartyTable	   d	 on e.PARTYID=d.PARTYID		  and e.DATAAREAID=d.DATAAREAID
where d.name is not null


--UPDATE [dbo].[DimEmployee]
--   SET 
   
--      [EmployeeName] =?
--      ,[Job] = ?
--      ,[DepartmenName] = ?
--      ,[DivisionName] = ?
--      ,[Gender] =?
--      ,[ContractType] = ?
--      ,[ContractDate] = ?
--      ,[ContractEndDate] = ?
--      ,[BirthDate] = ?
--      ,[HireDate] = ?
--      ,[InsuranceDate] = ?
--      ,[WorkeStatus] = ?

-- WHERE     [EmployeeAlternativeKey] = ? and  [CompanyKey] =?