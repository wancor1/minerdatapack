# アイテムの返却
    $item replace block 0 250 0 container.0 from entity @s player.crafting.$(slot)
    loot spawn ~ ~ ~ mine 0 250 0 debug_stick

# 瞬時にアイテムの主が拾う
    execute as @e[type=item,distance=..0] run data modify entity @s Owner set from entity @p UUID
    execute as @e[type=item,distance=..0] run data modify entity @s PickupDelay set value 0
