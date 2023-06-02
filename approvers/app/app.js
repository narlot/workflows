require("dotenv").config();

const express = require("express");
const app = express();

const execute = require("./src/execute");

app.get("/", async (req, res) => {
    res.setHeader("Content-Type", "application/json");
    res.sendStatus(await execute.execute(req));
  });

const port = process.env.PORT || 3000;
app.listen(port, function () {
  console.log("A service is listening to port " + port);
});