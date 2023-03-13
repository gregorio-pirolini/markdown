function Get-Message {
    param (
        [Parameter(Mandatory=$true)]
        [string]$Name,
        [Parameter(Mandatory=$true)]
        [ValidateSet('Hello', 'Goodbye')]
        [string]$Greeting
    )
    Write-Output "$Greeting, $Name!"
}


Get-Message -Name "greg" -Greeting "Hello"
    