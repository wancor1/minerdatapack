execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{ID:"minecraft:book"} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{ID:"minecraft:barrier"} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{ID:"minecraft:emerald"} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{ID:"minecraft:barrier"} run kill @s

item replace entity @s player.crafting.0 with minecraft:book[custom_data={menu:"invp",panel:"0"},item_name='{"text":"Home","italic":false,"color":"#684107"}',lore=['{"italic":false,"color":"dark_gray","text":"MainMenuに戻る"}']]
item replace entity @s player.crafting.1 with minecraft:barrier[custom_data={menu:"invp",panel:"1"},item_name='{"text":"Temp","italic":false}']
item replace entity @s player.crafting.2 with minecraft:emerald[custom_data={menu:"invp",panel:"2"},item_name='{"text":"Sell","italic":false,"color":"#8d65b8"}',lore=['{"italic":false,"color":"dark_gray","text":"Sellを開く"}']]
item replace entity @s player.crafting.3 with minecraft:barrier[custom_data={menu:"invp",panel:"3"},item_name='{"text":"Temp","italic":false}']

# オフハンド・カーソルの検知用アイテムをclear
    execute if items entity @s weapon.offhand #server:invpanelitem[custom_data={menu:"invp"}] run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor #server:invpanelitem[custom_data={menu:"invp"}] run item replace entity @s player.cursor with air

# インベントリ内の検知用アイテムをclear
    data modify storage server: menu set value {slot0:53,slot1:53,slot2:53,slot3:53}
    execute if items entity @s container.* #server:invpanelitem[custom_data={panel:"0"}] store result storage server: menu.slot0 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"0"}}}].Slot
    execute if items entity @s container.* #server:invpanelitem[custom_data={panel:"1"}] store result storage server: menu.slot1 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"1"}}}].Slot
    execute if items entity @s container.* #server:invpanelitem[custom_data={panel:"2"}] store result storage server: menu.slot2 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"2"}}}].Slot
    execute if items entity @s container.* #server:invpanelitem[custom_data={panel:"3"}] store result storage server: menu.slot3 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"3"}}}].Slot
    function server:home/clear with storage server: menu

data remove storage server: menu

#idea by mash