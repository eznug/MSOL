﻿##Set-ExecutionPolicy Unrestricted

    New-MsolUser -UserPrincipalName $UPN -DisplayName $DN -FirstName $FN -LastName $LN -UsageLocation SV -LicenseAssignment "afakedomain:ENTERPRISEPREMIUM"