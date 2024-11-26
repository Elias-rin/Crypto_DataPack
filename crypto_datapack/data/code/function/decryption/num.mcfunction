#> code:decryption/num

#数字抽出
data modify storage code: decryption.argument set from storage code: ciphertext[0]
data remove storage code: ciphertext[0]
execute store result score #dechipher_num code_decryption run function code:decryption/to_number

#数値
execute if score #dechipher_num code_decryption matches 0..31 run function code:decryption/score
#正終端
execute if score #dechipher_num code_decryption matches 32..43 run function code:decryption/num_positive
#負終端
execute if score #dechipher_num code_decryption matches 44..55 run function code:decryption/num_negative

#break条件
execute if data storage code: {ciphertext:[]} run return 0

#再帰
execute if score #flag_error code_decryption matches 0 run function code:decryption/num
