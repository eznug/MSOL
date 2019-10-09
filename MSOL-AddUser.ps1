##Set-ExecutionPolicy Unrestricted

connect-msolservice

$testcsv = import-csv C:\script\User.csv -Delimiter ";"
  ##-Delimiter :;, blank tab
  ## The output-file with users should in this case be stored in C:\script\ with the filename User.csv with ; as a delimiter
  ## if the outputfile has a different delimiter, change row 5
 
  
 foreach($test in $testcsv)
  
   {
  
   $UPN = $test.UserPrincipalName
   
   $DN = $test.DisplayName
  
   $FN = $test.FirstName

   $LN = $test.LastName

 

    New-MsolUser -UserPrincipalName $UPN -DisplayName $DN -FirstName $FN -LastName $LN -UsageLocation SV -LicenseAssignment "afakedomain:ENTERPRISEPREMIUM"
  
    }
  
