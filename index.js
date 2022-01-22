const express = require("express");

const app = express();
const PORT = 2010;

app.use("/", express.static("."));

app.listen(PORT, () => {
  console.log("app is listening on port " + PORT);
});

app.get("/home", (req, res) => res.sendFile("index.html", { root: __dirname }));
