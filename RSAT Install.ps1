##the following steps are to load the RSAT tools on to Windows 10 1809 and above
##
##First check which tools are avilable
Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
## Then run the following to install all options
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online
##If you want to install the options indvidually specify the option after the flaf -Name
##Confirm the options have all installed correctly
Get-WindowsCapability -Name RSAT* -Online | Select-Object -Property DisplayName, State
