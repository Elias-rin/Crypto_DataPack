#> code:encryption/score_positive

#数値変換
function code:encryption/num

#終端文字付与
execute store result storage code: encryption.argument.int int 1 run scoreboard players get #checksum code_encryption
function code:encryption/to_positive_char with storage code: encryption.argument
data modify storage code: ciphertext append from storage code: encryption.return
