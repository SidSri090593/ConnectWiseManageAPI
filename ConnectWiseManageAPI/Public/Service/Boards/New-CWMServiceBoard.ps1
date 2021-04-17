function New-CWMServiceBoard {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [int]$id,
        [ValidateLength(1,50)]
        [Parameter(Mandatory=$true)]
        [string]$name,
        [hashtable]$location,
        [hashtable]$department,
        [bool]$inactiveFlag,
        [hashtable]$signOffTemplate,
        [bool]$sendToContactFlag,
        [hashtable]$contactTemplate,
        [bool]$sendToResourceFlag,
        [hashtable]$resourceTemplate,
        [bool]$projectFlag,
        [bool]$showDependenciesFlag,
        [bool]$showEstimatesFlag,
        [hashtable]$boardIcon,
        [bool]$billTicketsAfterClosedFlag,
        [bool]$billTicketSeparatelyFlag,
        [bool]$billUnapprovedTimeExpenseFlag,
        [bool]$overrideBillingSetupFlag,
        [hashtable]$dispatchMember,
        [hashtable]$serviceManagerMember,
        [hashtable]$dutyManagerMember,
        [hashtable]$oncallMember,
        [hashtable]$workRole,
        [hashtable]$workType,
        [ValidateSet('Billable','DoNotBill','NoCharge','NoDefault')]
        [string]$billTime,
        [ValidateSet('Billable','DoNotBill','NoCharge','NoDefault')]
        [string]$billExpense,
        [ValidateSet('Billable','DoNotBill','NoCharge','NoDefault')]
        [string]$billProduct,
        [hashtable]$autoCloseStatus,
        [bool]$autoAssignNewTicketsFlag,
        [bool]$autoAssignNewECTicketsFlag,
        [bool]$autoAssignNewPortalTicketsFlag,
        [bool]$discussionsLockedFlag,
        [bool]$timeEntryLockedFlag,
        [ValidateLength(1,50)]
        [string]$notifyEmailFrom,
        [ValidateLength(1,60)]
        [string]$notifyEmailFromName,
        [bool]$closedLoopDiscussionsFlag,
        [bool]$closedLoopResolutionFlag,
        [bool]$closedLoopInternalAnalysisFlag,
        [bool]$timeEntryDiscussionFlag,
        [bool]$timeEntryResolutionFlag,
        [bool]$timeEntryInternalAnalysisFlag,
        [ValidateSet('Ascending','Descending')]
        [string]$problemSort,
        [ValidateSet('Ascending','Descending')]
        [string]$resolutionSort,
        [ValidateSet('Ascending','Descending')]
        [string]$internalAnalysisSort,
        [bool]$emailConnectorAllowReopenClosedFlag,
        [hashtable]$emailConnectorReopenStatus,
        [bool]$emailConnectorReopenResourcesFlag,
        [bool]$emailConnectorNewTicketNoMatchFlag,
        [bool]$emailConnectorNeverReopenByDaysFlag,
        [int]$emailConnectorReopenDaysLimit,
        [bool]$emailConnectorNeverReopenByDaysClosedFlag,
        [int]$emailConnectorReopenDaysClosedLimit,
        [bool]$useMemberDisplayNameFlag,
        [bool]$sendToCCFlag,
        [bool]$autoAssignTicketOwnerFlag,
        [bool]$closedLoopAllFlag,
        [ValidateSet('ActualHours','Manual','ClosedPhases','ClosedTickets')]
        [string]$percentageCalculation,
        [ValidateSet('Ascending','Descending')]
        [string]$allSort,
        [bool]$markFirstNoteIssueFlag,
        [hashtable]$_info
    )

    $Endpoint = '/service/boards'
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
