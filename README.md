
# build image
```
sudo docker build -t docker-nginx-env:1.0.0 .
```

# run image
```
 docker run -d \
  -p 8080:8080 \
  --name docker-nginx-env \
  -e YISUO_API_PASS=http://127.0.1.1:80 \
  docker-nginx-env:1.0.0
```

# exec container
```
docker exec -it [container id] bash


```