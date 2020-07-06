### 概要

これはなに？

githubにmovをあげるコマンドをスクリプト化したもの


#### 使い方
movies/srcに変換したいファイルを配置して TARGET_MOV としてファイル名を渡してあげて下記を実行

下記を実行
```bash 
docker-compose run -e TARGET_MOV=sample_console_echo.mp4 runner
```

#### 補足
imagemagickのメモリエラー等で怒られたらpolicy.xmlを書き換えること