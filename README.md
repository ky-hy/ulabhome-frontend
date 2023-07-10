#　 ulabhome
大学の研修室

# 開発手順

```sh
$ git clone https://github.com/ky-hy/ulabhome-frontend.git
$ cd ./ulabhome-frontend
$ make install
$ make up
```

`[http://localhost:3001](http://localhost:3001)`にアクセス。

本番環境での動作検証は以下。

```sh
$ make build
$ make start
```

`[http://localhost:4000](http://localhost:4000)`にアクセス。

# 各種コマンド

`Makefile`を用意しています。
`$ make`または`$ make help`を実行して各種コマンドを確認ください。
