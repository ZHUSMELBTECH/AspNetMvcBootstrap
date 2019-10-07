$gitversionObj = gitversion | ConvertFrom-Json
$nugetVersion = "$($gitversionObj.MajorMinorPatch)-$($gitversionObj.PreReleaseLabel)+$($gitversionObj.BuildMetaData)"
$env:packageVersion = $nugetVersion
#nuget pack .\PackageContent\Package.nuspec -BasePath .\PackageContent\ -OutputDirectory ./.packages -Version $nugetVersion
Write-Host "##vso[task.setvariable variable=packageVersion]$nugetVersion"
