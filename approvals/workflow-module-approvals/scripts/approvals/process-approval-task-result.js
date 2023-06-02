// if ($.usertasks.usertask3.last.decision == "approve") {
//     $.context.approvalInfo.numberOfCompletedSteps += 1
// }
if ($.context.approved == "approve") {
    $.context.approvalInfo.numberOfCompletedSteps += 1
}
$.context.waka = $.context.appro