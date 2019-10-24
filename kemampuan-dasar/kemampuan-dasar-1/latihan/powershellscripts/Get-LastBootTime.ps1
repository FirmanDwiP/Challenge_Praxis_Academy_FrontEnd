<#
.SYNOPSIS
Shows when last your PC started up.
.DESCRIPTION
This is a WMI wrapper function to get the time that your PC last started up. edited ini adalah latihan menggunakan powershell
.PARAMETER ComputerName
The name of the Computer you want to run the command against.
.EXAMPLE
Get-LastBootTime -ComputerName localhost
.LINK
www.howtogeek.com edited
#>

param(
    [Parameter(Mandatory = $true)][string]$ComputerName
)
Get-WmiObject -Class Win32_OperatingSystem -ComputerName localhost | Select-Object -Property CSName, @{n = "Last Booted"; e = { [Management.ManagementDateTimeConverter]::ToDateTime($_.LastBootUpTime) } }