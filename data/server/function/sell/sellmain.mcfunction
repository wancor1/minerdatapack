execute as @s[nbt=!{Inventory:[{Slot:35b}]}] run item replace entity @s inventory.26 with minecraft:magenta_stained_glass_pane[item_name='{"text":"Sell","italic":false,"color":"#8d65b8"}',lore=['{"italic":false,"color":"dark_gray","text":"ここにアイテムを置くと売れます。"}']]
execute as @s[nbt={Inventory:[{Slot:35b,id:"minecraft:magenta_stained_glass_pane"}]}] run function server:sell/sellmain
execute if items entity @s inventory.26 #server:sell_all run function server:none
item replace entity @s player.cursor from entity @s inventory.26