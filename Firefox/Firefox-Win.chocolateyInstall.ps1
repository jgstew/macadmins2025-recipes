$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$file = Join-Path $toolsDir 'FirefoxSetup.exe'
$packageArgs = @{
  packageName = 'Firefox'
  fileType = 'exe'
  silentArgs = '/S'
  file = $file
}

Install-ChocolateyInstallPackage @packageArgs
