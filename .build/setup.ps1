Write-Host "Current directory $env:SYSTEM_DEFAULTWORKINGDIRECTORY"
if (Test-Path ./.packages/) {
    Write-Host 'delete existing packages directory "./.packages/"'
    Remove-Item ./.pakcages/ -Force -Recurse
}
New-Item -Type Directory -Path "./.packages/"