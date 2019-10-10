Push-Location -Path .\.build
$gitversionObj = gitversion | ConvertFrom-Json
Pop-Location
$nugetVersion = "$($gitversionObj.SemVer)"
$env:packageVersion = $nugetVersion
#nuget pack .\PackageContent\Package.nuspec -BasePath .\PackageContent\ -OutputDirectory ./.packages -Version $nugetVersion
Write-Host "##vso[task.setvariable variable=packageVersion]$nugetVersion"
