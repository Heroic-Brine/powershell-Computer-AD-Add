param (
    [Parameter(Mandatory = $true)]
    [string] $DomainName = $(throw "-domainname is required"), 
    #the thorw is unessery due to the mandatory written above i just wanteted to try thorws
    [Parameter(Mandatory = $true)]
    [string] $UserName = $(throw "-username is required") 
)
Add-Computer -DomainName $DomainName -Credential $UserName
Start-Sleep 1