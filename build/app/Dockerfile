# https://hub.docker.com/_/golang
# 最新のイメージを使用(2023-12-2)
FROM golang:1.21.4-alpine

ENV ROOT=/go/src/app
# 作業ディレクトリを/appに設定
WORKDIR ${ROOT}

# apk: Alpine Linuxのパッケージマネージャ
# パッケージリストの更新 / gitのインストール
RUN apk update \
    && apk add --no-cache git \
    && go install github.com/cosmtrek/air@latest

COPY /app/go.mod /app/go.sum ./
RUN go mod download

CMD ["air", "-c", ".air.toml"]