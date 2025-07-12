FROM node:22-slim

# Instalar pnpm
RUN npm install -g pnpm

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Copiar todo el código
COPY . .

# Desactivar scripts postinstall que están fallando
ENV PNPM_SKIP_POSTINSTALL=1

# Instalar dependencias
RUN pnpm install

# Compilar el proyecto
RUN pnpm build

# Exponer el puerto estándar
EXPOSE 5678

# Comando para iniciar
CMD ["pnpm", "start"]
