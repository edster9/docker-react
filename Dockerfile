FROM node:alpine as builder

ENV APPDIR /app
WORKDIR ${APPDIR}

COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
