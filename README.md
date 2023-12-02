# go-app

- GoのWebアプリケーション(何を作成するかは未定)

## 作成背景

- Goの基本的な文法を学習したので、簡単なアプリケーションを作成してさらにGoの知見を深めたい。
- アプリケーションの作成を通して、DBの操作方法、DBごとの特性を理解したい
- Webアプリケーションの一連の開発フローを経験し、業務でアプリ側の方と連携する際に円滑なコミュニケーションが取れるようにする。

## ブランチ運用

- githubフローで開発を行うので、mainブランチからfeatureブランチを切ってissue毎に開発を進める

- ブランチを切る際はissueと紐づけるため、prefixに"#issue番号"を記載する

```zsh
git checkout -b #issue番号_<ブランチ名>
```

- コミットの際はissueと紐づけるため、コミットメッセージに"#issue番号"を記載する

```zsh
git commit -m "コミットメッセージ #issue番号"
```

## How to use

クローン

```zsh
git clone https://github.com/YuyaNakamura0139/go-sample.git
```

コンテナ作成

```zsh
docker-compose build
```

コンテナ起動

```zsh
docker-compose up
```

コンテナ内のターミナルに入る

```zsh
docker-compose exec -it go-sample /bin/sh
```

コンテナ停止

```zsh
docker-compose stop
```

コンテナ再起動

```zsh
docker-compose start
```

コンテナ削除

```zsh
docker-compose down
```

全部削除したい場合

```zsh
docker-compose down --rmi all --volumes
```

## 参考文献

- [【golang】DockerでGoの開発環境を構築する](https://zenn.dev/yusuke49/articles/9ed37838861b1d)
