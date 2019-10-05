$gitversionObj = gitversion | ConvertFrom-Json
$nugetVersion = "$($gitversionObj.MajorMinorPatch)-$($gitversionObj.PreReleaseLabel)+$($gitversionObj.BuildMetaData)"
nuget pack .\PackageContent\Package.nuspec -BasePath .\PackageContent\ -OutputDirectory ./.packages -Version $nugetVersion
Write-Host "##vso[task.setvariable variable=packageFileName]Zhusmelb.AspNet.Mvc.Bootstrap.$nugetVersion.nupkg"
