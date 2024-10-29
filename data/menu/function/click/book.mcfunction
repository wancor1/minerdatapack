function menu:return_item {slot:0}
execute if items entity @s player.crafting.2 #sell:sell_all run function menu:return_item {slot:2}

scoreboard players set @s panel 0

function menu:reload