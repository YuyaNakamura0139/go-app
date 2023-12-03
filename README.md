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

コマンド

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

## 参考文献

- [【golang】DockerでGoの開発環境を構築する](https://zenn.dev/yusuke49/articles/9ed37838861b1d)
