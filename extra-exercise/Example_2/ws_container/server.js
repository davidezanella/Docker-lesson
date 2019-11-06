const express = require('express');

const { Client } = require('pg');
const client = new Client();

const app = express();
const PORT = process.env.PORT;

app.get('/', async (req, res) => {
    await client.connect()
    
    const qry = await client.query('SELECT * from test');
    for(let person of qry.rows)
        res.send(person.name + " " + person.surname + "<br/>");
    
    await client.end();
});

let server = app.listen(PORT, () => console.log('Example app listening on port ' + PORT));