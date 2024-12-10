# Crypto DataPack
#### 概要
Minecraft Command Advent Calendar 2024 配布データパック

https://qiita.com/advent-calendar/2024/mccmd

#### 対応バージョン
1.21.3

#### 導入方法
crypto_datapackフォルダをdatapacksフォルダに入れれば導入完了です。

#### 使用方法
```storage code: plaintext```に設定した任意個数のリスト形式の数値を暗号化し```storage code: ciphertext```にリスト形式で格納する。
```
function #code:encryption
```

```storage code: ciphertext```に設定したリスト形式の暗号を復号化し```storage code: deciphertext```にリスト形式で格納する。
```
function #code:decryption
```

座標と水平方向を指定して簡易キーボードを召喚する。
```
function #keyboard:summon {x:"1.0",y:"2.0",z:"3.0",r:"90.0"}
```
