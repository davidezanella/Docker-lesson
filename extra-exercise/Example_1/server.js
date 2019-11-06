const express = require('express');

const app = express();
const PORT = process.env.PORT;

app.get('/', (req, res) => {
    res.send('Example 1 is running!')
});

let server = app.listen(PORT, () => console.log('Example app listening on port ' + PORT));
