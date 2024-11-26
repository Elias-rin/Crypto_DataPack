#> keyboard:interaction/right/run

#カーソルより右に文字がある場合のみ実行
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_char_index matches ..-2 run function keyboard:interaction/right/slide

#キー色変更
  #block_state変更
  data modify entity @n[type=block_display,tag=keyboard_right] block_state.Name set value "gray_concrete"
  #5tickで元のblock_stateに戻す
  scoreboard players set @n[type=block_display,tag=keyboard_right] keyboard_tick_push 5

#状態初期化
  data remove entity @s attack
  data remove entity @s interaction
