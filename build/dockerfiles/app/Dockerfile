# https://hub.docker.com/_/golang
# 最新のイメージを使用(2023-12-2)
FROM golang:1.21.4-alpine

# apk: Alpine Linuxのパッケージマネージャ
# パッケージリストの更新 / gitのインストール
RUN apk update && \
    apk add --no-cache git

# 作業ディレクトリを/appに設定
WORKDIR /app

# COPY (Dockerfileが存在するディレクトリの全てのファイルとディレクトリを指定) (Dockerイメージ内の作業ディレクトリを指定。)
COPY . .

# ここで、アプリケーションの依存関係を解決
RUN go mod tidy