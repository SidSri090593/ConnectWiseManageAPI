function New-CWMCompanySite {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [Alias('companyId')]
        [int]$parentId,
        [Parameter(Mandatory = $true)]
        [string]$name,
        [string]$addressLine1,
        [string]$addressLine2,
        [string]$city,
        [hashtable]$stateReference,
        [string]$zip,
        [hashtable]$country,
        [string]$addressFormat,
        [string]$phoneNumber,
        [string]$phoneNumberExt,
        [string]$faxNumber,
        [hashtable]$taxCode,
        [hashtable]$entityType,
        [double]$expenseReimbursement,
        [boolean]$primaryAddressFlag,
        [boolean]$defaultShippingFlag,
        [boolean]$defaultBillingFlag,
        [boolean]$defaultMailingFlag,
        [boolean]$inactiveFlag,
        [boolean]$billSeparateFlag,
        [Guid]$mobileGuid,
        [hashtable]$calendar,
        [hashtable]$timeZone,
        [hashtable]$company,
        [hashtable]$_info,
        [hashtable[]]$customFields
    )
    
    $Endpoint = "/company/companies/$($parentId)/sites"
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}