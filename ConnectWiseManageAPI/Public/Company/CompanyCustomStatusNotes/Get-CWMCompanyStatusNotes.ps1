function Get-CWMCompanyStatusNotes {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('companyId')]
        [int]$parentId,
        [Alias('statusNoteId')]
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

    $Endpoint = "/company/companies/$($parentId)/customStatusNotes/"
    Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}