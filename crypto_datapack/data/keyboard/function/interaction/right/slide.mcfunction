#> keyboard:interaction/right/slide

#数値管理
  #カーソルまでの文字数管理
  scoreboard players add @n[type=item_display,tag=keyboard_base] keyboard_char_count 1
  #配列番号管理
  scoreboard players add @n[type=item_display,tag=keyboard_base] keyboard_char_index 1

#データ編集
  #配列番号をstorageに格納
  execute store result storage keyboard: argument.index int 1 run scoreboard players get @n[type=item_display,tag=keyboard_base] keyboard_char_index
  #マクロで文字削除
  function keyboard:string/slide with storage keyboard: argument
