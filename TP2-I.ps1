#fonctionne, mais fait des doublons et la sortie ne prend as en charge les saut de lignes
Clear-Host
$path=@(Get-ChildItem -File -Path . -Recurse -Name)
$noms=@(Get-ChildItem -File -Path . -Recurse | Select-Object -Property @{Expression = "Name"})

$nb=$noms.Count

for($i=0; $i -lt $nb; $i++){

    $fich1=$noms[$i]
   
    for($j=0; $j -lt $nb; $j++){

        $fich2=$noms[$j]

        if ($i -ne $j){
            
            if ("$fich1" -eq "$fich2"){
                $array+=@("$($noms[$i]): `n$($noms[$j]) `n$($path[$i]) `n$($path[$j])`n`n") 
             }
            
        }
       
    }
    
}

$array
$array | Tee-Object -filePath ".\sortie.txt"
$array=@()