express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('It Works and update!')
});

app.listen(process.env.PORT || 3200);