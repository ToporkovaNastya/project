FROM node:latest
COPY ./ts/package*.json .
RUN npm install
COPY ./ts .
CMD ["npm","start"]
EXPOSE 3000
