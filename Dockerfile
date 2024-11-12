# Usa la imagen oficial de Node.js como base
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias de Node.js
RUN npm install

# Copia todo el código fuente (desde `LENGUAGE-JAVASCRIPT/` al contenedor)
COPY . .

# Expone el puerto en el que corre la aplicación
EXPOSE 8082

# Define el comando para ejecutar la aplicación
CMD ["node", "app.js"]
