# Verwende ein offizielles Node.js-Image als Basis
FROM node:16

# Setze das Arbeitsverzeichnis innerhalb des Containers
WORKDIR /usr/src/app

# Kopiere die package.json und package-lock.json in das Arbeitsverzeichnis
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den restlichen Quellcode in den Container
COPY . .

# Setze den Port, den die App verwenden wird
EXPOSE 3000

# Starte die Anwendung
CMD ["node", "index.js"]
