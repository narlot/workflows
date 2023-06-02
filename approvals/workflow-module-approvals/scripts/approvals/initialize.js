/**
 * Define number of steps to be taken to get an approval (exit of the workflow).
 * Define number of steps taken.
 */
var approvalInfo = {
    numberOfApprovalSteps: $.context.ApprovalSteps.length,
    numberOfCompletedSteps: 0
};

/**
 * Add variables to the context to make them available throughout the workflow.
 */
$.context.approvalInfo = approvalInfo;
$.context.step = {};
$.context.numberOfApprovalStepsString = approvalInfo.numberOfApprovalSteps.toString();