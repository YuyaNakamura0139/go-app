# https://hub.docker.com/_/golang
# 最新のイメージを使用(2023-12-2)
FROM golang:1.21.4-alpine

# 作業ディレクトリを/appに設定
WORKDIR /app

# COPY (ローカルのapp配下) (Dockerイメージ内の作業ディレクトリ)
COPY ./app .

# apk: Alpine Linuxのパッケージマネージャ
# パッケージリストの更新 / gitのインストール
RUN apk update \
    && apk add --no-cache git