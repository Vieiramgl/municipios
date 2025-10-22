FROM node:18-alpine

# cria diretório de trabalho
WORKDIR /usr/src/app

# copia package.json e package-lock.json primeiro para aproveitar cache do Docker
COPY package*.json ./

# instalar dependências em produção
RUN npm ci --only=production

# copia o restante do código
COPY . .

# expõe porta padrão configurada em .env (3000)
EXPOSE 3000

# comando para iniciar a aplicação
CMD ["node", "server.js"]
