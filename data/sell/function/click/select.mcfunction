execute unless items entity @s player.crafting.2 magenta_stained_glass_pane[custom_data={"menu":"sell"}] unless items entity @s player.crafting.2 #sell:sell_all run function menu:return_item {slot:2}
execute if items entity @s player.crafting.2 magenta_stained_glass_pane[custom_data={menu:sell}] run function sell:select_reload
execute if items entity @s player.crafting.2 #sell:sell_all run function sell:search/_


function sell:select_reload