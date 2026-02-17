const express = require('express');  
const app = express();  
const PORT = process.env.PORT || 8080;  
app.get('/', (req, res) => {  
  res.json({  
    message: 'Hello from Node.js!',  
    timestamp: new Date().toISOString(),  
    environment: process.env.NODE_ENV || 'development'  
  });  
});  
app.get('/health', (req, res) => {  
  res.json({ status: 'ok' });  
});  
app.listen(PORT, () => {  
  console.log(`Server is running on port ${PORT}`);  
});  
