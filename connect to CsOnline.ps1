Set-ExecutionPolicy unrestricted

Import-Module SkypeOnlineConnector

$cred = Get-Credential

$session = New-CsOnlineSession -OverrideAdminDomain desktoppublishing.onmicrosoft.com -Credential $cred -Verbose

Import-PSSession -Session $session -AllowClobber