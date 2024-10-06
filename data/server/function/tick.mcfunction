# 長い、邪魔
	execute as @a run clear @s magenta_stained_glass_pane[item_name='{"text":"Sell","italic":false,"color":"#8d65b8"}',lore=['{"italic":false,"color":"dark_gray","text":"ここにアイテムを置くと売れます。"}']]
	execute as @a if items entity @s player.cursor magenta_stained_glass_pane[item_name='{"text":"Sell","italic":false,"color":"#8d65b8"}',lore=['{"italic":false,"color":"dark_gray","text":"ここにアイテムを置くと売れます。"}']] run item replace entity @s player.cursor with air 1
	kill @e[type=item,nbt={Item: {id:"minecraft:magenta_stained_glass_pane",components: {"minecraft:lore":['{"color":"dark_gray","italic":false,"text":"ここにアイテムを置くと売れます。"}'], "minecraft:item_name":'{"color":"#8D65B8","italic":false,"text":"Sell"}'}}}]
#function
execute as @a at @s run function server:sell/sellmain