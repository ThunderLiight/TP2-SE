#petite erreur?
Clear-Host
$Pross=Read-Host "Entrez un nom de processus ou son ID"

if ($Pross -match '^\d+$'){ 
    [int]$Pross=$Pross 
    Get-Process -id $Pross | Select * 
    }

elseif ($Pross -match '\w+'){
    [String]$Pross=$Pross
    Get-Process $Pross | Select * 
    }

else {
    Write-Host "Saisie invalide - Veuillez entrer un indice de processus ou le nom d'un processus actifs."
    }