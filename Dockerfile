FROM node:18-slim

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Copiar dependencias
COPY package*.json ./
RUN npm install --omit=dev

# Copiar el resto del código
COPY . .

# Exponer puerto de n8n
EXPOSE 5678

# Variable de entorno por defecto (puedes cambiar en Render)
ENV N8N_PORT=5678

# Comando de inicio
CMD ["npm", "run", "start"]
