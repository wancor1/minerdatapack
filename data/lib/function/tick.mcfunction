#score
	scoreboard players add @a panel 0
	scoreboard players add @a category 0
	scoreboard players add @a type 0

#command
	#debug
		execute as @a[tag=debug] as @a[tag=!sell.sel] at @s run title @s actionbar [{"text":"not:所持ars:"},{"score":{"objective":"money","name":"@s"}},{"text":"shop:"},{"score":{"objective":"category","name":"@s"}},{"text":","},{"score":{"objective":"type","name":"@s"}}]
		execute as @a[tag=debug] as @a[tag=sell.sel] at @s run title @s actionbar [{"text":"tag:所持ars:"},{"score":{"objective":"money","name":"@s"}},{"text":"shop:"},{"score":{"objective":"category","name":"@s"}},{"text":","},{"score":{"objective":"type","name":"@s"}}]

#function
execute as @a[scores={panel=0}] at @s run function menu:_
execute as @a[scores={panel=1}] at @s run function sell:_
execute as @a[scores={panel=2}] at @s run function shop:_

execute as @a[scores={ec_menu=0}] at @s run function enderchest:mainmenu/_