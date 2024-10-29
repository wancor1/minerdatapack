function menu:return_item {slot:3}

execute if items entity @s player.crafting.2 #sell:sell_all run tag @s add sell.sel
execute as @s[tag=sell.sel] at @s run function sell:search/_

execute if items entity @s player.crafting.2 #sell:sell_all run function sell:select_reload
execute unless items entity @s player.crafting.2 #sell:sell_all run function sell:reload