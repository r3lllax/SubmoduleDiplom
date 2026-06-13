# Стадия сборки фронтенда
FROM node:20-alpine AS vue-build
WORKDIR /app
COPY frontend/package.json frontend/package-lock.json ./
RUN npm ci
COPY frontend/ .
RUN npm run build   # результат обычно в папке dist

# Финальный образ
FROM nginx:alpine
RUN addgroup -g 1000 appgroup && adduser -u 1000 -G appgroup -D appuser
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=vue-build /app/dist /usr/share/nginx/html