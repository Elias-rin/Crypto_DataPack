#> keyboard:string/remove
#storage keyboard: argument:{index:-1}

#文字削除
$data remove entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.char[$(index)]
#表示用データにコピー
data modify entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.display set from entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.char
#表示用データにカーソルを挿入
$data modify entity @n[type=item_display,tag=keyboard_base] item.components.minecraft:custom_data.display insert $(index) value "<"
#表示
data modify entity @n[type=text_display,tag=keyboard_text] text set value '[{"entity":"@n[type=item_display,tag=keyboard_base]","nbt":"item.components.minecraft:custom_data.display","interpret":true}]'

#引数クリア
data remove storage keyboard: argument
