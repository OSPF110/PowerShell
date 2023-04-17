Set-ExecutionPolicy unrestricted

Import-Module SkypeOnlineConnector

$cred = Get-Credential

$session = New-CsOnlineSession -OverrideAdminDomain contoso.onmicrosoft.com -Credential $cred -Verbose

Import-PSSession -Session $session -AllowClobber