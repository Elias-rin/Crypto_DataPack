#> code:decryption/score

#0フラグ処理
scoreboard players set #flag_zero code_decryption 0
execute if score #dechipher_num code_decryption matches 0 if score #dechipher_scale code_decryption matches 3.. run scoreboard players set #flag_zero code_decryption 1

#範囲外数値エラー
execute if score #dechipher_scale code_decryption matches 1073741824 if score #dechipher_num code_decryption matches ..3 run scoreboard players set #flag_error code_decryption 1
execute if score #dechipher_scale code_decryption matches ..0 run scoreboard players set #flag_error code_decryption 1

#終端文字不足エラー
execute if data storage code: {ciphertext:[]} run scoreboard players set #flag_error code_decryption 1

#10進数変換
scoreboard players operation #operation_num code_decryption = #dechipher_num code_decryption
scoreboard players operation #operation_num code_decryption *= #dechipher_scale code_decryption
scoreboard players operation #dechipher_score code_decryption += #operation_num code_decryption

#範囲外数値エラー
execute if score #dechipher_score code_decryption matches -2147483648..-1 run scoreboard players set #flag_error code_decryption 1

#scale処理
scoreboard players operation #dechipher_scale code_decryption *= #32 code_decryption
