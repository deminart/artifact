FROM node:14-alpine
WORKDIR /opt/artifact
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "artifact.js"]
