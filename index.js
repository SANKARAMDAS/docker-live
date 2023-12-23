//create simple express app
const express = require('express');
const app = express();


//create a route
app.get('/',(req, res) => {
    res.send('Hello World');
});

//listen for request
app.listen(8080, () => {
    console.log('Server is listening on port 8080');
});