#> code:decryption/num_positive

#0フラグエラー
execute if score #flag_zero code_decryption matches 1 run scoreboard players set #flag_error code_decryption 1

#連続終端文字エラー
execute if score #dechipher_scale code_decryption matches 1 run scoreboard players set #flag_error code_decryption 1

#数字処理
scoreboard players operation #operation_num code_decryption = #dechipher_num code_decryption
scoreboard players operation #operation_num code_decryption -= #32 code_decryption

#チェックサム処理
scoreboard players operation #checksum code_decryption += #dechipher_score code_decryption
scoreboard players operation #checksum code_decryption %= #12 code_decryption

#チェックサムエラー
execute unless score #operation_num code_decryption = #checksum code_decryption run scoreboard players set #flag_error code_decryption 1

#数値処理
scoreboard players operation #random_sum code_decryption += #random_num code_decryption
scoreboard players operation #random_sum code_decryption %= #12 code_decryption
scoreboard players operation #dechipher_score code_decryption -= #random_sum code_decryption
execute store result storage code: decryption.append int 1 run scoreboard players get #dechipher_score code_decryption
data modify storage code: deciphertext append from storage code: decryption.append

#初期化
scoreboard players set #dechipher_score code_decryption 0
scoreboard players set #dechipher_scale code_decryption 1
