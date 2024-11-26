#> keyboard:block_display/tick

scoreboard players remove @s keyboard_tick_push 1
data modify entity @s[scores={keyboard_tick_push=0}] block_state.Name set value "light_gray_concrete"
