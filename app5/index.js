const express = require('express');
const app = express();
const port = 3000;

app.get('/node', (req, res) => {
  res.send('Hello World SIR!');
});
app.get('/node/v1', (req, res) => {
  res.send('Hello World V1!');
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});