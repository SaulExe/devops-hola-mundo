# Imagen base ligera de Node
FROM node:20-alpine

# Carpeta de trabajo
WORKDIR /app

# Copiar manifiestos e instalar solo dependencias de producción
COPY package*.json ./
RUN npm ci --omit=dev

# Copiar el código fuente
COPY src ./src

# Exponer el puerto
EXPOSE 3000

# Comando de arranque
CMD ["node", "src/index.js"]
