#> keyboard:interaction/h/run

#keyboard_flag_shiftの状態に応じて分岐
  #小文字
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_flag_shift matches 0 run function keyboard:interaction/h/lower
  #大文字
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_flag_shift matches 1 run function keyboard:interaction/h/upper

#キー色変更
  #block_state変更
  data modify entity @n[type=block_display,tag=keyboard_h] block_state.Name set value "gray_concrete"
  #5tickで元のblock_stateに戻す
  scoreboard players set @n[type=block_display,tag=keyboard_h] keyboard_tick_push 5

#状態初期化
  data remove entity @s attack
  data remove entity @s interaction
