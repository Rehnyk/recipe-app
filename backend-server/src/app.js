const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send(`<body style="background-color: rgba(31,31,31,1)">
              <H2 style="color:white">This is the Backend Server!</H2>
              <p style="color:white">Runs on Node.js and Express.js</p>
              <p style="color:white">Port: 3001 </p>
              <code style="color:yellow">Remember everytime that you change a file in the backend server, 
              you need to restart the server to see the changes.</code>
              </body>`);
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});