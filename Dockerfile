FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
Run npm install
copy . .
Run npm run build

FROM nginx
COPY --from=builder /app/build  /usr/share/nginx/html

