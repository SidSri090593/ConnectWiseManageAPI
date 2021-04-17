﻿function Get-CWMManufacturer {
    [CmdletBinding()]
    param(
        [int]$id,
        [string]$Condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )

    $Endpoint = '/procurement/manufacturers'
    if($id){ $Endpoint = Join-Url $Endpoint $id }

    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
