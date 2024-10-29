execute unless items entity @s player.crafting.2 magenta_stained_glass_pane[custom_data={menu:"sell",panel:"2"}] unless items entity @s player.crafting.2 #sell:sell_all run function menu:return_item {slot:2}
execute if items entity @s player.crafting.2 #sell:sell_all run function sell:search/_

execute if items entity @s player.crafting.2 #sell:sell_all run function sell:select_reload
execute unless items entity @s player.crafting.2 #sell:sell_all run function sell:reload