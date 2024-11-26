FROM node:16 alpine
WORKDIR /usr/src/app                    
COPY package1*.json ./
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"] 