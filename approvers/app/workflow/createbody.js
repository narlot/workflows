const wfBodySchema = require("./bodyschema.json");

function createBody(Quote) {
  wfBodySchema.definitionId = process.env.WF_DEFINITION_ID;
  wfBodySchema.context.QuoteID = Quote.quoteID;
  Quote.approvers.forEach((approver, i) => {
    wfBodySchema.context.ApprovalSteps[i].StepID = i;
    wfBodySchema.context.ApprovalSteps[i].Approver.Appeal =
      process.env.WF_APPROVER_APPEAL;
    wfBodySchema.context.ApprovalSteps[i].Approver.Email = approver;
  });
  return wfBodySchema;
}
module.exports.createBody = createBody;
