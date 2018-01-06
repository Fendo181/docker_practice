## Docker-alpine:latest

alpineは最小のlinuxなので遊ぶにはもってこい。
が`apk`コマンドが慣れない

- [Dockerやる前のAlpine Linux](https://yoshinorin.net/2016/10/01/alpine-linux/)

### packeage


### Usage

`build`

```
docker build -t fendo181/alpine:0.1 .

# ReBuild
docker build  -t fendo181/alpine:0.1 --no-cache .
```

`run`

```
docker run --rm --name alpine -it fendo181/alpine:0.1

```

`exec`

```
docker exec -it container_name(alpine) /bin/sh
```
