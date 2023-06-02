const queryString = require("query-string");
const axios = require("axios");

async function getWFToken() {
  const data = { grant_type: "client_credentials" };
  const options = {
    method: "POST",
    headers: { "content-type": "application/x-www-form-urlencoded" },
    auth: {
      username: process.env.WF_CLIENT_ID,
      password: process.env.WF_CLIENT_SECRET,
    },
    data: queryString.stringify(data),
    url: process.env.WF_ACCESS_TOKEN_URL,
  };

  return new Promise((resolve, reject) => {
    axios
      .request(options)
      .then(function (response) {
        resolve(response.data.access_token);
      })
      .catch(function (error) {
        reject(error);
      });
  });
}

module.exports.getWFToken = getWFToken;
