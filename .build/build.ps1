$gitversionObj = gitversion | ConvertFrom-Json
$nugetVersion = "$($gitversionObj.MajorMinorPatch)-$($gitversionObj.PreReleaseLabel)"
nuget pack -OutputDirectory ./.packages -Properties version=$nugetVersion