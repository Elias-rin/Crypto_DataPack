#> keyboard:interaction/enter/run

#入力確定
  #storage keyboard: charにコピー
  data modify storage keyboard: char set from entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.char
  #表示
  tellraw @a [{"text":"> "},{"nbt":"char","storage":"keyboard:","interpret":true}]

#decryptionへ
  function code:decryption/from_keyboard

#入力リセット
  scoreboard players set @n[type=item_display,tag=keyboard_base] keyboard_char_count 0
  scoreboard players set @n[type=item_display,tag=keyboard_base] keyboard_char_index -1
  data modify entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.char set value []
  data modify entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.display set value ["<"]
  data modify entity @n[type=text_display,tag=keyboard_text] text set value '[{"entity":"@n[type=item_display,tag=keyboard_base]","nbt":"item.components.minecraft:custom_data.display","interpret":true}]'

#キー色変更
  #block_state変更
  data modify entity @n[type=block_display,tag=keyboard_enter] block_state.Name set value "gray_concrete"
  #5tickで元のblock_stateに戻す
  scoreboard players set @n[type=block_display,tag=keyboard_enter] keyboard_tick_push 5

#状態初期化
  data remove entity @s attack
  data remove entity @s interaction
