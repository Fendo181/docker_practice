## Docker-debina:latest


### packeage

- vim
- git

### Usage

`build`

```
docker build -t fendo181/debian:0.1 .

# ReBuild
docker build  -t fendo181/debian:0.1 --no-cache .
```

`run`

```
docker run --rm --name debian -it fendo181/debian:0.1

```

`exec`

```
docker exec -it container_name(debian) /bin/sh
```
