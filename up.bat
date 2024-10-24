docker stop php56
docker rm php56

docker run -d --name php56 -p 9056:9000 php56

pasue