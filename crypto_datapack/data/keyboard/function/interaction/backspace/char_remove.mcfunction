#> keyboard:interaction/backspace/char_remove

#カーソルまでの文字数管理
  scoreboard players remove @n[type=item_display,tag=keyboard_base] keyboard_char_count 1

#データ編集
  #配列番号をstorageに格納
  execute store result storage keyboard: argument.index int 1 run scoreboard players get @n[type=item_display,tag=keyboard_base] keyboard_char_index
  #マクロで文字削除
  function keyboard:string/remove with storage keyboard: argument
