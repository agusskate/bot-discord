FROM node:18

# Instala herramientas necesarias para compilar módulos nativos
RUN apt-get update && apt-get install -y build-essential python3 libopus-dev

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

CMD ["node", "index.js"]
