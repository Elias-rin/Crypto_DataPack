#> code:encryption/score_negative

#正負反転
scoreboard players operation #plain_score code_encryption *= #-1 code_encryption

#数値変換
function code:encryption/num

#終端文字付与
execute store result storage code: encryption.argument.int int 1 run scoreboard players get #checksum code_encryption
function code:encryption/to_negative_char with storage code: encryption.argument
data modify storage code: ciphertext append from storage code: encryption.return
