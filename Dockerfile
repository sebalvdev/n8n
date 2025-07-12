FROM node:22-slim

# Instalar pnpm
RUN npm install -g pnpm

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Copiar todo el código
COPY . .

# Instalar dependencias
RUN pnpm install

# Construir n8n
RUN pnpm build

# Exponer el puerto
EXPOSE 5678

# Comando de inicio
CMD ["pnpm", "start"]
