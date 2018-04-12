Clear-Host
function getOctets {
   param ([string]$chemin)

   $i=0
   Get-ChildItem $chemin -recurse -force| foreach -process {$i+=$_.length}
    return $i
}

$donnees=@()
$chemins=@(Get-ChildItem -File -Path . -Recurse -Name)
$noms=@(Get-ChildItem -File -Path . -Recurse | Select-Object -Property @{Expression = "Name"})

for ($i = 0; $i -lt $noms.Count; $i++) 
{ 
    $tailleOctets=getOctets $chemins[$i]
    $donnees+=@("$($noms[$i]) - $($tailleOctets) $("Octets")")
}

$donnees | Sort-Object -Descending
$donnees

