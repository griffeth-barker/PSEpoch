Clear-Content -Path "..\PSEpoch\PSEpoch.psm1"
Get-ChildItem -Path "..\PSEpoch\PSEpoch\Public" -Filter *.ps1 | Get-Content | Add-Content -Path ..\PSEpoch\PSEpoch.psm1
Add-Content -Path "..\PSEpoch\PSEpoch.psm1" -Value "Export-ModuleMember -Function *"