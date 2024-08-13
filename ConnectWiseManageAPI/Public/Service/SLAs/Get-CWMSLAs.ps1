function Get-CWMSLAs {
    [CmdletBinding()]
    param(
        [Alias('SLAId')]
        [int]$id,
        [switch]$count,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )
    
    $Endpoint = '/service/SLAs'
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}