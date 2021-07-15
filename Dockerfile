FROM node:alpine
WORKDIR "/app"
ARG PORT
ARG DB
COPY ./package.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]