Clear-Host
function getOctets {
   param ([string]$chemin)

   $i=0
   Get-ChildItem $chemin -recurse -force| foreach -process {$i+=$_.length}
    return $i
}

function permuterInt{
    param ($tabInd, $ind1, $ind2)
    
    $transit = $tabInd[$ind1]
    $tabInd[$ind1] = $tabInd[$ind2]
    $tabInd[$ind2] = $transit
} 

function triSSSIndirection{
    param ($taillesOctets, $tabInd)
 
    for ($i = 0; $i -lt $tabInd.Count; $i++) {
        $tabInd[$i] = $i
    }

    for ($i = 0; $i -lt ($taillesOctets.Count-2); $i++) {
        
        $iMin = $i

        for ($j = ($i+1); $j -lt $tillesOctets.Count; $j++) {
            
            if ($taillesOctets[$tabInd[$iMin]] -gt $taillesOctet[$tabInd[$j]]){

                $iMin = $j
            
            }

        }
        
        permuterInt($tabInd, $iMin, $i)
    }
}


$chemins=@(Get-ChildItem -File -Path . -Recurse -Name)
$noms=@(Get-ChildItem -File -Path . -Recurse | Select-Object -Property @{Expression = "Name"})
$taillesOctets=@()
$tabInd=@()

for ($i = 0; $i -lt $noms.Count; $i++) 
{ 
    $taillesOctets+=@(getOctets $chemins[$i])
    #$donnees+=@("$($tailleOctets) $(" Octets") - $($noms[$i])")
}

triSSSIndirection($taillesOctets, $tabInd)

for ($i = 0; $i -lt $tabInd.Count; $i++) {
 $taillesOctets[$tabInd[$i]]
} 

