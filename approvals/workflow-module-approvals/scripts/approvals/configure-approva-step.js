// get the current step
var currentStep = $.context.approvalInfo.numberOfCompletedSteps;

// set approval step data
var approvalStepData = {
    //ApproverFirstName: $.context.ApprovalSteps[currentStep].Approver.FirstName,
    //ApproverLastName: $.context.ApprovalSteps[currentStep].Approver.LastName,
    ApproverAppeal: $.context.ApprovalSteps[currentStep].Approver.Appeal,
    ApproverEmail: $.context.ApprovalSteps[currentStep].Approver.Email,
    ApprovalStepID: $.context.ApprovalSteps[currentStep].StepID,
}

$.context.step.approvalStepData = approvalStepData;