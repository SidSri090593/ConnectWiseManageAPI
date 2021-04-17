function New-CWMAgreement {
    # 2020.4
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [int]$id,
        [Parameter(Mandatory=$true)]
        [ValidateLength(1,100)]
        [string]$name,
        [hashtable]$type,
        [hashtable]$company,
        [hashtable]$contact,
        [hashtable]$site,
        [hashtable]$subContractCompany,
        [hashtable]$subContractContact,
        [hashtable]$parentAgreement,
        [ValidateLength(1,50)]
        [string]$customerPO,
        [hashtable]$location,
        [hashtable]$department,
        [boolean]$restrictLocationFlag,
        [boolean]$restrictDepartmentFlag,
        [string]$startDate,
        [string]$endDate,
        [boolean]$noEndingDateFlag,
        [hashtable]$opportunity,
        [boolean]$cancelledFlag,
        [string]$dateCancelled,
        [ValidateLength(1,100)]
        [string]$reasonCancelled,
        [hashtable]$sla,
        [ValidateLength(1,20)]
        [string]$workOrder,
        [ValidateLength(1,5000)]
        [string]$internalNotes,
        [ValidationSet('Amount', 'Hours', 'Incidents')]
        [string]$applicationUnits,
        [double]$applicationLimit,
        [ValidationSet('Contract2Weeks', 'Contract4Weeks', 'ContractYear', 'CalendarMonth', 'CalendarQuarter', 'CalendarWeek', 'ContractQuarter', 'CalendarYear')]
        [string]$applicationCycle,
        [boolean]$applicationUnlimitedFlag,
        [boolean]$oneTimeFlag,
        [boolean]$coverAgreementTime,
        [boolean]$coverAgreementProduct,
        [boolean]$coverAgreementExpense,
        [boolean]$coverSalesTax,
        [boolean]$carryOverUnused,
        [boolean]$allowOverruns,
        [int]$expiredDays,
        [int]$limit,
        [boolean]$expireWhenZero,
        [boolean]$chargeToFirm,
        [ValidationSet('Actual', 'Hourly')]
        [string]$employeeCompRate,
        [ValidationSet('Billing', 'Amount', 'Percent')]
        [string]$employeeCompNotExceed,
        [double]$compHourlyRate,
        [double]$compLimitAmount,
        [hashtable]$billingCycle,
        [boolean]$billOneTimeFlag,
        [hashtable]$billingTerms,
        [ValidationSet('ContractYear', 'CalendarYear')]
        [string]$invoicingCycle,
        [hashtable]$billToCompany,
        [hashtable]$billToContact,
        [hashtable]$billToSite,
        [double]$billAmount,
        [boolean]$taxable,
        [double]$prorateFirstBill,
        [string]$billStartDate,
        [hashtable]$taxCode,
        [boolean]$restrictDownPayment,
        [boolean]$prorateFlag,
        [string]$invoiceDescription,
        [boolean]$topComment,
        [boolean]$bottomComment,
        [hashtable]$workRole,
        [hashtable]$workType,
        [hashtable]$projectType,
        [hashtable]$invoiceTemplate,
        [ValidationSet('Billable', 'DoNotBill', 'NoCharge', 'NoDefault')]
        [string]$billTime,
        [ValidationSet('Billable', 'DoNotBill', 'NoCharge', 'NoDefault')]
        [string]$billExpenses,
        [ValidationSet('Billable', 'DoNotBill', 'NoCharge', 'NoDefault')]
        [string]$billProducts,
        [boolean]$billableTimeInvoice,
        [boolean]$billableExpenseInvoice,
        [boolean]$billableProductInvoice,
        [hashtable]$currency,
        [ValidationSet('Current', 'Future', 'Both', 'Undefined')]
        [string]$periodType,
        [boolean]$autoInvoiceFlag,
        [string]$nextInvoiceDate,
        [hashtable]$companyLocation,
        [ValidationSet('Active', 'Cancelled', 'Expired', 'Inactive')]
        [string]$agreementStatus,
        [hashtable]$_info,
        [array]$customFields
    )

    $Endpoint = '/finance/agreements'
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
