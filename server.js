const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

//Environment variable 
const replicaApp = process.env.APP_NAME

// Serve static files from the "Images" directory
app.use('/Images', express.static(path.join(__dirname, 'Images')));

// Route to serve the main HTML file
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname,  'index.html'));
  console.log(`Request served by node ${replicaApp}`);
});

app.listen(PORT, () => {
  console.log(`Server is listening on ${PORT}`);
});
