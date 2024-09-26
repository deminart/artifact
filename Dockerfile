# Используем базовый образ Node.js
FROM node:14-alpine

# Устанавливаем рабочую директорию
WORKDIR /opt/artifact

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем исходный код
COPY . .

# Устанавливаем точку входа
CMD ["node", "artifact.js"]
