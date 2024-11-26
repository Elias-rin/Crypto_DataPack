#> keyboard:load

tellraw @a {"text":"keyboard:load"}

#scoreboard
  #カーソルまでの文字数を管理
  scoreboard objectives add keyboard_char_count dummy
  #次に入力する文字が挿入される配列番号
  scoreboard objectives add keyboard_char_index dummy
  #Shiftキーの状況を管理
  scoreboard objectives add keyboard_flag_shift dummy
  #キーの状態復元に使用
  scoreboard objectives add keyboard_tick_push dummy
