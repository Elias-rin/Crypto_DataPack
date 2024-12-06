#> code:encryption/run
#code: plaintext set value [0,123,-1]

#初期化
data remove storage code: ciphertext
scoreboard objectives add code_encryption dummy
scoreboard players set #-1 code_encryption -1
scoreboard players set #12 code_encryption 12
scoreboard players set #32 code_encryption 32
scoreboard players set #checksum code_encryption 0

#データセット
data modify storage code: encryption.to_char set value ["2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","m","n","p","q","r","s","t","u","v","w","x","y","z"]
data modify storage code: encryption.to_positive_char set value ["A","B","C","D","E","F","G","H","J","K","L","M"]
data modify storage code: encryption.to_negative_char set value ["N","P","Q","R","S","T","U","V","W","X","Y","Z"]

#乱数付与
execute store result score #random_num code_encryption run random value 1..11
scoreboard players operation #random_sum code_encryption = #random_num code_encryption
execute store result storage code: encryption.argument.int int 1 run scoreboard players get #random_num code_encryption
function code:encryption/to_positive_char with storage code: encryption.argument
data modify storage code: ciphertext append from storage code: encryption.return

#数値処理
function code:encryption/score

#終了処理
data remove storage code: plaintext
scoreboard objectives remove code_encryption
data remove storage code: encryption

#表示
tellraw @a [{"text":"> "},{"nbt":"ciphertext","storage":"code:","interpret":true}]
