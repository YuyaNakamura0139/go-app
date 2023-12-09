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

### クローン

```zsh
git clone https://github.com/YuyaNakamura0139/go-sample.git
```

### コマンド

```zsh
make all: ビルド~コンテナ起動~コンテナの状態の表示
make reset: コンテナの停止~未使用リソースの削除~ビルド~コンテナ起動~コンテナの状態の表示
make prune: 未使用のリソースを削除
make build: ビルド
make up: コンテナ起動
make ps: コンテナの状態の表示
make down: コンテナの停止
make login_app: appコンテナにログイン
make login_db: dbコンテナにログイン
```

### 必要なモジュールがある場合

参考: [Go+gin+Air環境をDockerで構築](https://zenn.dev/hrs/articles/go-gin-air-docker)

#### 1. importを記載

試しにginパッケージをimportしてみる

この時点ではgo.modにモジュールが記載されていないので、エラーが出る。

```go
package main

import "github.com/gin-gonic/gin"

func main() {
    r := gin.Default()
    r.GET("/ping", func(c *gin.Context) {
        c.JSON(200, gin.H{
            "message": "pong",
        })
    })
    r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
```

```エラー
could not import github.com/gin-gonic/gin (no required module provides package "github.com/gin-gonic/gin")
```

#### 2. コンテナのビルド

```docker-compose build```

#### 3. 依存関係の解決

以下コマンドを実行して、必要なモジュールを`go.mod`へ追加する
`docker-compose run --rm app go mod tidy`

この時点で、プロジェクトの依存関係が最新の状態になるので、1のエラーが消えているはず。

あとはコンテナを起動して開発を進める。

## 参考文献

- [【golang】DockerでGoの開発環境を構築する](https://zenn.dev/yusuke49/articles/9ed37838861b1d)
