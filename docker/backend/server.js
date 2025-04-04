require('newrelic');

const express = require('express');
const app = express();

app.get('/', (req, res) => {
  console.log("✅ Backend received request at /");
  res.send("Hello from backend with New Relic + ELK!");
});

app.listen(5000, () => {
  console.log("✅ Backend server running on port 5000");
});
