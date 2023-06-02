const validate = require("../helper/validate");
const strings = require("../constants/strings.json");
const c4cGetQuote = require("../c4c/getQuoteByUUID");
const c4cParseResponse = require("../c4c/parseResponse");
const workflow = require("../workflow/createbody");
const workflowToken = require("../workflow/gettoken");
const workflowstart = require("../workflow/workflowstart");

async function execute(request) {
  try {
    let quoteUUID = request.query.QuoteID;
    if (!validate.validateInputParameter(quoteUUID)) {
      console.log(strings.InvalidQuote);
      return 500;
    } else {
      const quote = await c4cGetQuote.getQuoteByUUID(quoteUUID);
      if (quote.status == 200) {
        const Quote = c4cParseResponse.parseResponse(quote);
        if (Quote.approvers.length != 0) {
          const wfBody = workflow.createBody(Quote);
          if (wfBody.context.QuoteID != undefined) {
            let wfToken = await workflowToken.getWFToken();
            if (wfToken.length > 0) {
              return await workflowstart.workflowstart(wfBody, wfToken);
            } else {
              console.log(strings.WorkflowNotStarted);
              return 500;
            }
          } else {
            console.log(strings.WorkflowBodyNotCreated);
            return 500;
          }
        } else {
          console.log(strings.NoApprovers);
          return 500;
        }
      } else {
        console.log(strings.QuoteNotFound);
        return 500;
      }
    }
  } catch (exception) {
    console.log(strings.NoMandatoryParameter);
    return 500;
  }
}

module.exports.execute = execute;
