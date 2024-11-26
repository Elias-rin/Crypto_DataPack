#> keyboard:interaction/1/run

#カーソルまでの文字数管理
  scoreboard players add @n[type=item_display,tag=keyboard_base] keyboard_char_count 1

#データ編集
  #配列番号をstorageに格納
  execute store result storage keyboard: argument.index int 1 run scoreboard players get @n[type=item_display,tag=keyboard_base] keyboard_char_index
  #入力文字をstorageに格納
  data modify storage keyboard: argument.input set value "1"
  #マクロで文字挿入
  function keyboard:string/input with storage keyboard: argument

#キー色変更
  #block_state変更
  data modify entity @n[type=block_display,tag=keyboard_1] block_state.Name set value "gray_concrete"
  #5tickで元のblock_stateに戻す
  scoreboard players set @n[type=block_display,tag=keyboard_1] keyboard_tick_push 5

#状態初期化
  data remove entity @s attack
  data remove entity @s interaction
