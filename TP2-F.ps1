#fonctionne
Clear-Host
$nb=Read-Host "Nombre de nombres randoms"

if ($nb -match '^\d+$'){

    $array=@()
    For ($i=0; $i -lt $nb; $i++) {
        $x= Get-Random
        $array += $x 
    }

    Write-Host $array
}
else{
    Write-Host "Saisie invalide - Veuillez entrer un nombre entier positif valide."
    }