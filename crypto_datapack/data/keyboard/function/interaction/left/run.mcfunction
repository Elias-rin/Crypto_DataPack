#> keyboard:interaction/left/run

#カーソルまでの文字数が1以上である場合のみ実行
  execute if score @n[type=item_display,tag=keyboard_base] keyboard_char_count matches 1.. run function keyboard:interaction/left/slide

#キー色変更
  #block_state変更
  data modify entity @n[type=block_display,tag=keyboard_left] block_state.Name set value "gray_concrete"
  #5tickで元のblock_stateに戻す
  scoreboard players set @n[type=block_display,tag=keyboard_left] keyboard_tick_push 5

#状態初期化
  data remove entity @s attack
  data remove entity @s interaction
