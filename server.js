const express = require('express');
const path = require('path');

const app = express();
const port = 3004;

// Serve static files (e.g., HTML, CSS, JS) from the "public" folder
app.use(express.static(path.join(__dirname, 'public')));

// Route for the homepage
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Start the server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});

