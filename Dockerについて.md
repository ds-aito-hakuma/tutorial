# Dockerについて
## 8月2日（月）
---
### docker run コマンドとは
- $ docker run コマンドは、分割すると下記の3つのコマンドを実行していることと同じになる。
  - $ docker pull : イメージの取得
  - $ docker create : コンテナの作成
  - $ docker start  : コンテナの起動

### docker上にてPerlの環境を構築する
https://qiita.com/carimatics/items/b24b51a2027eb749d44b

### そもそもDockerで環境構築を行う方法
https://qiita.com/minato-naka/items/e9cd026747693759800c
- 環境構築の手順
  - Docker Hubから取得する方法
    - コンテナをイメージをもとに作成する
    - イメージはDocker Hubから取得する
  - 自分で作成する方法
    - Dockerfileにコンテナの環境設定を記述し、それをビルドするとイメージが作成される

### 不明点
- bashコマンドについて
### 明日調べること
- Docker上にてPerlを実行する方法
---