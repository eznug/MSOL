﻿##Set-ExecutionPolicy Unrestrictedconnect-msolservice$testcsv = import-csv C:\script\User.csv -Delimiter ";"  ##-Delimiter :;, blank tab    foreach($test in $testcsv)     {     $UPN = $test.UserPrincipalName      $DN = $test.DisplayName     $FN = $test.FirstName   $LN = $test.LastName 

    New-MsolUser -UserPrincipalName $UPN -DisplayName $DN -FirstName $FN -LastName $LN -UsageLocation SV -LicenseAssignment "afakedomain:ENTERPRISEPREMIUM"      }  