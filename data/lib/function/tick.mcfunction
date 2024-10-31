#score
scoreboard players add @a panel 0

#function
execute as @a[scores={panel=0}] at @s run function menu:_
execute as @a[scores={panel=1}] at @s run function sell:_
execute as @a[scores={panel=2}] at @s run function shop:_