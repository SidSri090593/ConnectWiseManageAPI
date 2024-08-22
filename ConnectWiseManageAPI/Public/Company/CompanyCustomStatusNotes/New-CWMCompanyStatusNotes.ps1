function New-CWMCompanyStatusNotes {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('companyId')]
        [int]$parentId,
        [Parameter(Mandatory = $true)]
        [string]$customNote,
        [Parameter(Mandatory = $true)]
        [hashtable]$status,
        [hashtable]$company,
        [hashtable]$_info
    )

    $Endpoint = "/company/companies/$($parentId)/customStatusNotes"
    Invoke-CWMNewMaster -Arguments $PSBoundParameters -Endpoint $Endpoint
}