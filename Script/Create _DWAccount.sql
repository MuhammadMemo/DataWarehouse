﻿alter view [dbo].[_DWAccount] as
SELECT        ACCOUNTNUM AS AccountAlternativeKey, ACCOUNTNAME, ACCOUNTPLTYPE AS AccountType,
ACCOUNTNAMEALIAS AS AccountGroup, DATAAREAID,dateadd(Hour,2, MODIFIEDDATETIME) as MODIFIEDDATETIME
FROM            dbo.LEDGERTABLE