# ---------------------------------------------------------
# Script: Check-UserGroups.ps1
# Purpose: Identifies a user's Global and Domain Local groups.
# Logic: Uses the "Suitcase" pipeline to filter for clarity.
# ---------------------------------------------------------

param(
    [Parameter(Mandatory=$true)]
    [string]$UserName
)

Write-Host "Opening the suitcase for user: $UserName..." -ForegroundColor Cyan

# The Pipeline: Get groups | Select only the important tags
Get-ADPrincipalGroupMembership -Identity $UserName | Select-Object Name, GroupScope, GroupCategory | Sort-Object GroupScope
