#> code:encryption/num

#32進数変換
scoreboard players operation #plain_num code_encryption = #plain_score code_encryption
scoreboard players operation #plain_num code_encryption %= #32 code_encryption
scoreboard players operation #plain_score code_encryption /= #32 code_encryption
execute store result storage code: encryption.argument.int int 1 run scoreboard players get #plain_num code_encryption
function code:encryption/to_char with storage code: encryption.argument
data modify storage code: ciphertext append from storage code: encryption.return

#break条件
execute if score #plain_score code_encryption matches 0 run return 0

#再帰
function code:encryption/num
