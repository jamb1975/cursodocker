#docker build -t node-started . #genera un nuevo contenedor
#docker run -dp 4000:3000 node-started   #run app on port  local 4000 docker 3000
#docker run -d -p 80:80 docker/getting-started
#docker exec -it idcontenedor /bin/sh
#docker start idcontainer
#docker stop iscontainer
#docker ps show container run
#docker ps -a #show container all
# docker rm idcontainer# remove images
# docker rm -f idcontainer# force remove images
# docker images #muestra las imagener
#docker push jamb1975/node-started #upload dockerhyub
#docker tag node-started jamb1975/node-started  #crea etiqueta para el repositorio
#docker run -dp 3000:3000 -v todo-db:/etc/todos getting-started  #persistence bd
#docker pull escalante9811/node-started:latest traer app remoto
#docker volume create todo-db
# docker volume inspect todo-db
#docker images
#docker run -dp 4000:3000 -v todo-db:/etc/todos node-started
FROM node:12-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]