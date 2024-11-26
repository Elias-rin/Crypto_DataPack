#> keyboard:interaction/shift/run

#shiftフラグ管理
  scoreboard players add @n[type=item_display,tag=keyboard_base] keyboard_flag_shift 1
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_flag_shift matches 2.. run scoreboard players set @n[type=item_display,tag=keyboard_base] keyboard_flag_shift 0

#キー表示変更
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_flag_shift matches 0 run function keyboard:interaction/shift/lower
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_flag_shift matches 1 run function keyboard:interaction/shift/upper

#状態初期化
  data remove entity @s attack
  data remove entity @s interaction
