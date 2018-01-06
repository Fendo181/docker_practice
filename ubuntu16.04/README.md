## Docker-ubuntu16.04

### packeage

- git
- vim
- rbenv,ruby-build

### Usage

`build`

```
docker build -t fendo181/ubuntu:0.1 .

# ReBuild
docker build  -t fendo181/ubuntu:0.1 --no-cache .
```

`run`

```
docker run --name  ubuntu -it fendo181/ubuntu:0.1
```

`exec`

```
docker exec -i -t ubuntu bash
```

## Reference

- [drecom/docker-ubuntu-ruby](https://github.com/drecom/docker-ubuntu-ruby)
