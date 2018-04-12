#fonctionne
Clear-Host
Get-ChildItem -Path C:\Windows | 
    Where-Object { $_.CreationTime -ge "01/01/2017" -and $_.CreationTime -le "12/31/2017" }