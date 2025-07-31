FROM node:18

# Instala herramientas de compilación necesarias
RUN apt-get update && apt-get install -y build-essential python3

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

CMD ["node", "index.js"]
