data modify storage items:context ItemID.Offhand set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".ItemID
data modify storage items:context ItemID.Mainhand set from entity @s SelectedItem.components."minecraft:custom_data".ItemID

data modify storage items:context ItemID.Both set from storage items:context ItemID.Offhand
data modify storage items:context ItemID.Both set from storage items:context ItemID.Mainhand


execute if data storage items:context ItemID{Both:"enderchest"} run function server:ender_chest/hold
execute if data storage items:context ItemID{Both:"enderchest"} if score @s ItemsUse matches 1 anchored eyes positioned ^ ^ ^ run function server:ender_chest/playuse


execute if score @s[scores={ItemsUsing=1..}] ItemsUse matches 0 run function server:ruse

scoreboard players set @s ItemsUse 0

data remove storage items:context ItemID