#fonctionne
Clear-Host
Param(
  [String]$LaDate
)

if ($LaDate -match '^[0,1]?\d{1}\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3}))$'){
       [DateTime]$jour = $LaDate
       [DateTime]$jourApres=$jour.AddDays(1)

       Get-EventLog -Log Application -After $jour -before $jourApres| 
       Sort-Object -Property @{Expression = "Source"; Descending = $False} | Tee-Object -filePath ".\TP2-D.csv"}

else {Write-Host "Paramètre invalide - Veuillez saisir une date (MM/JJ/AAAA)"}