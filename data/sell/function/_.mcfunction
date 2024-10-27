# home
execute unless items entity @s player.crafting.0 #menu:invpanelitem if items entity @s player.crafting.1 #menu:invpanelitem if items entity @s player.crafting.2 #menu:invpanelitem if items entity @s player.crafting.3 #menu:invpanelitem run function menu:home/click/book

# if air
	execute as @s[nbt=!{Inventory:[{Slot:82b}]}] run function sell:ifair
# 板ガラスskip         ↕反対
	execute as @s[nbt={Inventory:[{Slot:82b,id:"minecraft:magenta_stained_glass_pane",components: {"minecraft:lore":['{"color":"dark_gray","italic":false,"text":"ここにアイテムを置くと売れます。"}'], "minecraft:item_name":'{"color":"#8D65B8","italic":false,"text":"Sell"}'}}]}] run return fail
# 売れないitem
	execute unless items entity @s player.crafting.2 #sell:sell_all run function sell:itemback
# 売りのためのitem特定     ↕反対
	execute if items entity @s player.crafting.2 #sell:sell_all run function sell:search/_