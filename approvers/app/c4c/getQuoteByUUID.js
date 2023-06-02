const axios = require("axios");

const basicAuth = {
  username: process.env.C4C_USERNAME,
  password: process.env.C4C_PASSWORD,
};

async function getQuoteByUUID(uuid) {
  return new Promise((resolve, reject) => {
    axios
      .get(
        `${process.env.C4C_QUOTE_URL}('${uuid}')${process.env.C4C_QUOTE_URL_ADDITION_PARTY}`,
        {
          auth: basicAuth,
        }
      )
      .then(
        (response) => {
          resolve(response);
        },
        (error) => {
          reject(error);
        }
      );
  });
}

module.exports.getQuoteByUUID = getQuoteByUUID;
