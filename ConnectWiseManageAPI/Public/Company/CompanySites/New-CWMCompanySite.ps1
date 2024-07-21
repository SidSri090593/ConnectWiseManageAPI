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
        [string]$state,
        [string]$zip,
        [string]$country,
        [string]$phone,
        [string]$fax,
        [string]$email,
        [string]$website,
        [string]$territory,
        [string]$status,
        [string]$type
    )
    
    $Endpoint = "/company/companies/$($parentId)/sites"
    $Body = @{
        name = $name
        addressLine1 = $addressLine1
        addressLine2 = $addressLine2
        city = $city
        state = $state
        zip = $zip
        country = $country
        phone = $phone
        fax = $fax
        email = $email
        website = $website
        territory = $territory
        status = $status
        type = $type
        defaultFlag = $defaultFlag
    }
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}