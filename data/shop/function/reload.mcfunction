execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:book", components: {"minecraft:custom_data": {menu: "shop"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:book", components: {"minecraft:custom_data": {menu: "invp"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:barrier", components: {"minecraft:custom_data": {menu: "shop"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:orange_stained_glass_pane", components: {"minecraft:custom_data": {menu: "shop"}}} run kill @s
execute positioned ~ ~1.2 ~ as @e[type=item,distance=..2] if data entity @s Item{id:"minecraft:green_stained_glass_pane", components: {"minecraft:custom_data": {menu: "shop"}}} run kill @s

item replace entity @s player.crafting.0 with minecraft:book[custom_data={menu:"shop",panel:"0"},item_name='{"text":"Home","italic":false,"color":"#684107"}',lore=['{"italic":false,"color":"dark_gray","text":"MainMenuに戻る"}']]
function shop:items
item replace entity @s player.crafting.2 with minecraft:orange_stained_glass_pane[custom_data={menu:"shop",panel:"2"},custom_model_data=1,item_name='{"text":"Category","italic":false,"color":"#fff017"}',lore=['{"italic":false,"color":"dark_gray","text":"Next"}','{"italic":false,"color":"dark_gray","text":"shift:prev"}']]
item replace entity @s player.crafting.3 with minecraft:green_stained_glass_pane[custom_data={menu:"shop",panel:"3"},custom_model_data=1,item_name='{"text":"Type","italic":false,"color":"#ff9933"}',lore=['{"italic":false,"color":"dark_gray","text":"Next"}','{"italic":false,"color":"dark_gray","text":"shift:prev"}']]

# オフハンド・カーソルの検知用アイテムをclear
    execute if items entity @s weapon.offhand #shop:invpanelitem run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor #shop:invpanelitem run item replace entity @s player.cursor with air

# インベントリ内の検知用アイテムをclear
    data modify storage shop: menu set value {slot0:53,slot1:53,slot2:53,slot3:53}
    execute if items entity @s container.* #shop:invpanelitem store result storage shop: menu.slot0 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"0"}}}].Slot
    execute if items entity @s container.* #shop:invpanelitem store result storage shop: menu.slot1 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"1"}}}].Slot
    execute if items entity @s container.* #shop:invpanelitem store result storage shop: menu.slot2 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"2"}}}].Slot
    execute if items entity @s container.* #shop:invpanelitem store result storage shop: menu.slot3 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{panel:"3"}}}].Slot
    function shop:clear with storage shop: menu

data remove storage shop: menu
tag @s remove sell.sel