#très long et pas tout a fait trié...+/- 25 sec

Clear-Host
function getOctets {
   param ([string]$chemin)

   $i=0
   Get-ChildItem $chemin -recurse -force| foreach -process {$i+=$_.length}
    return $i
}

#$chemins=@(Get-ChildItem -File -Path . -Recurse -Name| Sort-Object -Descending -Property length)
$chemins=@(Get-ChildItem -File -Path . -Recurse | Sort-Object -Descending -Property length)
$noms=@(Get-ChildItem -File -Path . -Recurse | Sort-Object -Descending -Property length| Select-Object -Property @{Expression = "Name"})

for ($i = 0; $i -lt $noms.Count; $i++) 
{ 
    $tailleOctets+=@(getOctets $chemins[$i])
}


for ($i = 0; $i -lt $noms.Count; $i++) 
{ 
    $donnees+=@("$($noms[$i]) - $($tailleOctets[$i]) $("Octets")")
}

$donnees

$chemins.Count
$noms.Count
$tailleOctets.Count
$donnees.Count


$donnees=@()
$tailleOctets=@()


#Get-ChildItem -File -Path . -Recurse | sort-object -Descending -property length