# if air
	execute as @s[nbt=!{Inventory:[{Slot:35b}]}] run function server:sell/ifair
# 板ガラスskip
	execute as @s[nbt={Inventory:[{Slot:35b,id:"minecraft:magenta_stained_glass_pane",components: {"minecraft:lore":['{"color":"dark_gray","italic":false,"text":"ここにアイテムを置くと売れます。"}'], "minecraft:item_name":'{"color":"#8D65B8","italic":false,"text":"Sell"}'}}]}] run return fail
# 売りのためのitem特定
	execute if items entity @s inventory.26 #server:sell_all run function server:sell/search/_
# 売れないitem
	execute unless items entity @s inventory.26 #server:sell_all run function server:sell/itemback