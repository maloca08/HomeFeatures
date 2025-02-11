const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Statische Dateien aus dem 'public'-Ordner servieren
app.use(express.static('public'));

// Routen
app.get('/', (req, res) => {
  res.send('<h1>Hallo von Node.js!</h1><p>Dies ist deine WebApp.</p>');
});

app.listen(port, () => {
  console.log(`Server läuft auf http://localhost:${port}`);
});