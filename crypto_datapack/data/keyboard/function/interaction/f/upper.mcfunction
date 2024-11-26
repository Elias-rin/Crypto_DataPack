#> keyboard:interaction/f/upper

#カーソルまでの文字数管理
  scoreboard players add @n[type=item_display,tag=keyboard_base] keyboard_char_count 1

#データ編集
  #配列番号をstorageに格納
  execute store result storage keyboard: argument.index int 1 run scoreboard players get @n[type=item_display,tag=keyboard_base] keyboard_char_index
  #入力文字をstorageに格納
  data modify storage keyboard: argument.input set value "F"
  #マクロで文字挿入
  function keyboard:string/input with storage keyboard: argument
