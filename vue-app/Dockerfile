FROM node:alpine3.19 as development

#Create working directory
WORKDIR /app

#Copy package.json file on the container
COPY package*.json ./

#Install the project dependencies
RUN npm install

#Copy the rest of the project files to the container
COPY . .

#Build the vue.js application
RUN npm run build

FROM nginx:stable-alpine as production

COPY --from=development /app/dist /usr/share/nginx/html

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 5173

#Start nignx to serve the application

CMD ["nginx", "-g","daemon off;"]
