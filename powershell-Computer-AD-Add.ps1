param (
    [Parameter(Mandatory = $true)]
    [string] $DomainName = $(throw "-domainname is required"), 
    #the thorw is unessery due to the mandatory written above i just wanteted to try thorws
    [Parameter(Mandatory = $true)]
    [string] $username = $(throw "-username is required") 
)
#Checks if script currently is administrator
#pause
#If (-NOT ([Securi-ty.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
#{
#Starts the script as administrator
Start-Process powershell.exe $PSCommandPath -Verb runAs
#exit
#} 


Add-Computer -DomainName $DomainName -Credential $username