$gitversionObj = gitversion | ConvertFrom-Json
$nugetVersion = "$($gitversionObj.MajorMinorPatch)-$($gitversionObj.PreReleaseLabel)"
nuget pack -OutputDirectory ./.packages -Properties version=$nugetVersion
Write-Host "##vso[task.setvariable variable=packageFileName]Zhusmelb.AspNet.Mvc.Bootstrap.$nugetVersion.nupkg"
