#NE fonctionne PAS
Clear-Host
$driveLetter=Get-Volume | Select-Object -Property @{Expression = "DriveLetter"}
$sizeRemaining=Get-Volume | Select-Object -Property @{Expression = "SizeRemaining"}
$size=Get-Volume | Select-Object -Property @{Expression = "Size"}
$liste=@()

foreach ($drive in $driveLetter){
    if([int]$size[$i] -ne 0){
    [int]$pourcentageUtilisation=($size[$i]-$sizeRemaining[$i])/$size[$i]
    }
    else{$pourcentageUtilisation=0}
    $liste += ,@($driveLetter[$i], $sizeRemaining[$i], $pourcentageUtilisation, $size[$i]) 
}
foreach($drive in $liste)  
    {  
    $drive | Tee-Object -filePath "./TP2-G.html"
    }  