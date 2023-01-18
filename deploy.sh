# docker-compose build 
# Build new image
docker build . -t nginx-gateway:latest 
# Tag image
docker tag nginx-gateway:latest winty.io:5000/winty/infra/nginx-gateway:latest
# Push image to remote server
docker push winty.io:5000/winty/infra/nginx-gateway:latest