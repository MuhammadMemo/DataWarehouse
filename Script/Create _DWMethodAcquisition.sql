create view _DWMethodAcquisition as 

select RECID as MethodAcquisitionAlternativeKey ,SALESDISTRICTID as NameMethodAcquisition , DATAAREAID as CompanyName from smmBusRelSalesDistrictGroup

