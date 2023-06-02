const axios = require("axios");
const strings = require("../constants/strings.json");

function workflowstart(wfBody, wfToken) {
  return new Promise((resolve, reject) => {
    axios
      .post(process.env.WF_START_URL, wfBody, {
        headers: {
          Authorization: `bearer ${wfToken}`,
        },
      })
      .then(
        (response) => {
          resolve(response.status);
        },
        (error) => {
          reject(strings.WorkflowNotStarted);
        }
      );
  });
}
module.exports.workflowstart = workflowstart;
