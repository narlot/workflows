function parseResponse(response) {
    let Quote = new Object();
    let quoteID;
    let responseDataApprover = [];
    response.data.d.results
      .filter((array) => {
        return array.RoleCode == process.env.C4C_APPROVER_ROLE_CODE;
      })
      .forEach((approver) => {
        quoteID = approver.QuoteID;
        responseDataApprover.push(approver.Email);
      });
  
    Quote.quoteID = quoteID;
    Quote.approvers = responseDataApprover;
  
    return Quote;
  }
  
  module.exports.parseResponse = parseResponse;
  