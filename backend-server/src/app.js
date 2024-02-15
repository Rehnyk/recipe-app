const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send(`<body style="background-color: rgba(31,31,31,1)">
              <H2 style="color:white">This is the Backend Server!</H2>
              <p style="color:white">Runs on Node.js and Express.js</p>
              <p style="color:white">Port: 3001 </p>
             
              </body>`);
});


const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});