# Docker Tips

## Docker入門

### Docker imageを直接いれてくる。

imagesを入れてくる

```sh
# version指定
docker pull ubuntu:16:04

#latest
docker pull ubuntu
```

### imageからdockerのコンテナを作成する


`REPOSITORY`を指定する

```sh
docker run -d -i -t ubuntu /bin/bash
```

この状態だと`ubuntu:latest`が指定されるので`tag`でverを指定しているならバージョンも指定して上げる。

```rb
docker run -d -i -t fendo181/ubuntu:0.1 -h ubuntu
```

nameも指定する。

```sh
docker run --name ubuntu16.04 -d -i -t fendo181/ubuntu:0.1 /bin/bash
```


### コンテナの中に入る。

`CONTAINER ID`を指定する場合

```sh
docker exec -i -t (docker-id)  bash
```


`NAMES`を指定する場合

```sh
docker exec -i -t ubuntu16.04 bash
```


## Dockerfile

上の方法だとただ、ubuntuのimageをインストールするだけなので、とくに何もソフトウェアを入れてない状態。したがってほぼプレーンである。

なのでここでDockerfikeを使って操作してみる。

Dockerfileを作る。
立ち上げる時のコマンドは

```sh
docker build .
```

でもこれだとなんのコンテナなのかわからない。

```sh
<none>  <none> b75c69d9004b 23 seconds ago 11MB
```


なので名前とtagをつけてあげます。

```sh
docker build -t fendo181/ubuntu16.04:0.1 .
```

これでtag付けがされたイメージが取得できます。

```sh
fendo181/ubuntu       0.1                 6a7ed7b5c47d        25 seconds ago      151MB
```




### 資料
- [Dockerfile リファレンス](http://docs.docker.jp/engine/reference/builder.html)
- [docker コマンド チートシート](https://qiita.com/voluntas/items/68c1fd04dd3d507d4083)
- [Dockerfile のベストプラクティス](http://docs.docker.jp/engine/articles/dockerfile_best-practice.html)
