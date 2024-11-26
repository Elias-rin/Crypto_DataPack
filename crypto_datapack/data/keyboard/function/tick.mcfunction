#> keyboard:tick

execute as @e[type=interaction,tag=keyboard,predicate=keyboard:click_check] at @s run function keyboard:interaction/tick
execute as @e[type=block_display,tag=keyboard,scores={keyboard_tick_push=1..}] run function keyboard:block_display/tick
