FROM node:22-slim

# Instalar pnpm
RUN npm install -g pnpm

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Copiar todo el código
COPY . .

# Instalar dependencias respetando monorepo/workspaces
RUN pnpm install --frozen-lockfile

# Exponer el puerto estándar
EXPOSE 5678

# Comando para iniciar n8n
CMD ["pnpm", "start"]
