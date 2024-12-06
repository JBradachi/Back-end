FROM node:16

# cria a pasta app no container e usa ela como pasta principal
WORKDIR /app

# coloca package dentro de app 
COPY package.json .

# executa o comando npm install
RUN npm install

# copia os arquivos para dentro da aplicação
COPY . .

# executa um comando dentro de /app
CMD [ "npm", "start" ]