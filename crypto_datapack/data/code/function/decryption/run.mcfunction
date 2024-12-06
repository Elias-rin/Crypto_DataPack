#> code:decryption/run
#code: ciphertext set value ["B","4","C","y","5","J","5","M"]

#初期化
data remove storage code: deciphertext
scoreboard objectives add code_decryption dummy
scoreboard players set #-1 code_decryption -1
scoreboard players set #12 code_decryption 12
scoreboard players set #32 code_decryption 32
scoreboard players set #44 code_decryption 44
scoreboard players set #dechipher_score code_decryption 0
scoreboard players set #dechipher_scale code_decryption 1
scoreboard players set #checksum code_decryption 0
scoreboard players set #flag_error code_decryption 0
scoreboard players set #flag_zero code_decryption 0

#データ未設定エラー
execute unless data storage code: ciphertext run scoreboard players set #flag_error code_decryption 1
#1文字目不足エラー
execute if data storage code: {ciphertext:[]} run scoreboard players set #flag_error code_decryption 1

#乱数抽出
data modify storage code: decryption.argument set from storage code: ciphertext[0]
data remove storage code: ciphertext[0]
execute store result score #random_num code_decryption run function code:decryption/to_random
scoreboard players operation #random_sum code_decryption = #random_num code_decryption

#2文字目不足エラー
execute if data storage code: {ciphertext:[]} run scoreboard players set #flag_error code_decryption 1

#2文字目以降処理
execute if score #flag_error code_decryption matches 0 run function code:decryption/num

#終了処理
data remove storage code: ciphertext
execute if score #flag_error code_decryption matches 1 run data remove storage code: deciphertext
scoreboard objectives remove code_decryption
data remove storage code: decryption

#表示
execute unless data storage code: deciphertext run tellraw @a [{"text":"復号不可"}]
execute if data storage code: deciphertext run tellraw @a [{"text":"> "},{"nbt":"deciphertext","storage":"code:"}]
