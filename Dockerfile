# Usar una imagen base oficial de Node.js
FROM node:latest

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de package.json y package-lock.json
COPY package*.json ./

# Verificar que los archivos fueron copiados
RUN ls -la /app

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto en el que la aplicación Angular se ejecutará
EXPOSE 4200

# Iniciar la aplicación Angular
CMD ["npm", "start", "--", "--host", "0.0.0.0"]