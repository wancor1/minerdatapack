loot replace entity @s enderchest.0 mine 2 250 0 minecraft:debug_stick

# オフハンド・カーソルの検知用アイテムをclear
    execute if items entity @s weapon.offhand #menu:invpanelitem run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor #menu:invpanelitem run item replace entity @s player.cursor with air

# インベントリ内の検知用アイテムをclear
    data modify storage enderchest: ec set value {slot0:53,slot1:53,slot2:53,slot3:53}
    execute if items entity @s container.* minecraft:chest[custom_data={ec:"1"}] store result storage enderchest: ec.slot0 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{ec:"0"}}}].Slot
    execute if items entity @s container.* minecraft:white_stained_glass_pane[custom_data={ec:"2"}] store result storage enderchest: ec.slot1 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{ec:"1"}}}].Slot
    execute if items entity @s container.* minecraft:[custom_data={ec:"3"}] store result storage enderchest: ec.slot2 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{ec:"2"}}}].Slot
    execute if items entity @s container.* minecraft:[custom_data={ec:"4"}] store result storage enderchest: ec.slot3 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{ec:"3"}}}].Slot
    function enderchest:mainmenu/clear with storage enderchest: ec

data remove storage menu: ec