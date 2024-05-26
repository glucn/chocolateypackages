$ErrorActionPreference = 'Stop'

$url        = 'https://work.weixin.qq.com/wework_admin/commdownload?platform=win&from=wwindex' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'WXWork_*'
  checksum      = '98733142A8995C898273F2CDA1CF62E6DF76D6DC73E23C5FD99F0F09E530B8B4'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs