FROM node:alpine
WORKDIR /app

COPY ./backend .
COPY ./frontend/dist/tables/* ./public
RUN npm i

EXPOSE 3001

CMD [ "node", "bin/www" ]
