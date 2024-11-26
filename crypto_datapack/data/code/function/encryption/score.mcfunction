#> code:encryption/score

#数値処理
scoreboard players operation #random_sum code_encryption += #random_num code_encryption
scoreboard players operation #random_sum code_encryption %= #12 code_encryption
execute store result score #plain_score code_encryption run data get storage code: plaintext[0]
data remove storage code: plaintext[0]
scoreboard players operation #plain_score code_encryption += #random_sum code_encryption
scoreboard players operation #checksum code_encryption += #plain_score code_encryption
scoreboard players operation #checksum code_encryption %= #12 code_encryption
execute if score #plain_score code_encryption matches 0.. run function code:encryption/score_positive
execute if score #plain_score code_encryption matches ..-1 run function code:encryption/score_negative

#break条件
execute if data storage code: {plaintext:[]} run return 0

#再帰
function code:encryption/score
