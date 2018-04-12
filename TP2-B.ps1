#fonctionne
Clear-Host
$tab = Get-Service

foreach ($item in $tab) {

    if ($item -match "[eE]")

        {$item}

}