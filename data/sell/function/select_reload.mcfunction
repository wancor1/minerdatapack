execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:book", components: {"minecraft:custom_data": {menu: "sell"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:barrier", components: {"minecraft:custom_data": {menu: "sell"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:magenta_stained_glass_pane", components: {"minecraft:custom_data": {menu: "sell"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:golden_apple", components: {"minecraft:custom_data": {menu: "sell"}}} run kill @s

item replace entity @s player.crafting.0 with minecraft:book[custom_data={menu:"sell",panel:"0"},item_name='{"text":"Home","italic":false,"color":"#684107"}',lore=['{"italic":false,"color":"dark_gray","text":"MainMenuに戻る"}']]
item replace entity @s player.crafting.1 with minecraft:barrier[custom_data={menu:"sell",panel:"1"},item_name='{"text":"Temp","italic":false}']
# RIP player.crafting.2
item replace entity @s player.crafting.3 with minecraft:golden_apple[custom_data={menu:"sell",panel:"3"},food={nutrition:0,saturation:0,can_always_eat:false,eat_seconds:1145141919.810},item_name='{"text":"売却","italic":false,"color": "#efef25"}',lore=['{"italic":false,"color":"dark_gray","text":"クリックしてアイテムを売ります。"}']]

# オフハンド・カーソルの検知用アイテムをclear
    execute if items entity @s weapon.offhand #sell:sellpanelitem[custom_data~{menu:"sell"}] run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor #sell:sellpanelitem[custom_data~{menu:"sell"}] run item replace entity @s player.cursor with air

    execute if items entity @s weapon.offhand minecraft:book[custom_data~{panel:"0"}] run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor minecraft:book[custom_data~{panel:"0"}] run item replace entity @s player.cursor with air

# インベントリ内の検知用アイテムをclear
    data modify storage sell: menu set value {slot0:53,slot1:53,slot2:53,slot3:53,slot4:53,slot5:53,slot6:53}
    execute if items entity @s container.* minecraft:book[custom_data~{panel:"0"}] store result storage sell: menu.slot0 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"0"}}}].Slot
    #execute if items entity @s container.* minecraft:book[custom_data={menu:"sell",panel:"0"}] store result storage sell: menu.slot4 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"sell",panel:"0"}}}].Slot
    #execute if items entity @s container.* minecraft:book[custom_data={menu:"shop",panel:"0"}] store result storage sell: menu.slot5 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"shop",panel:"0"}}}].Slot
    execute if items entity @s container.* #sell:sellpanelitem[custom_data={menu:"sell",panel:"1"}] store result storage sell: menu.slot1 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"sell",panel:"1"}}}].Slot
    execute if items entity @s container.* #sell:sellpanelitem[custom_data={menu:"sell",panel:"2"}] store result storage sell: menu.slot2 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"sell",panel:"2"}}}].Slot
    execute if items entity @s container.* minecraft:emerald[custom_data={menu:"invp",panel:"2"}] store result storage sell: menu.slot6 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"invp",panel:"2"}}}].Slot
    execute if items entity @s container.* #sell:sellpanelitem[custom_data={menu:"sell",panel:"3"}] store result storage sell: menu.slot3 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{menu:"sell",panel:"3"}}}].Slot
    function sell:clear with storage sell: menu

data remove storage sell: menu