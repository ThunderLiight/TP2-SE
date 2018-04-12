#fonctionne PowerShell 4.0 Windows 8.1

Clear-Host
$tab = Get-Service -Name

foreach ($item in $tab) {

    if ($item -match "[eE]"){
        $item
    }

}