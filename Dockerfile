FROM node:18-slim

# Instalar pnpm
RUN npm install -g pnpm

WORKDIR /usr/src/app

COPY . .

# Instalar dependencias respetando workspaces
RUN pnpm install --frozen-lockfile

EXPOSE 5678

CMD ["pnpm", "start"]
