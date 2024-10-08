#block(名前),SP(値段)
#{"block":"","SP":""}

data modify storage qty 1 set from entity @s Inventory[{Slot:35b}].count
execute store result score @s qty run data get storage qty 1

# del item
item replace entity @s inventory.26 with air 1
item replace entity @s player.cursor with air 1
# sell
	# reset
	scoreboard players reset @s sellmoney
	# 値段設定
	$scoreboard players set @s sellmoney $(SP)
	# 値段*個数
	scoreboard players operation @s sellmoney *= @s qty
	# add money
	scoreboard players operation @s money += @s sellmoney
	# message
	$tellraw @s [{"text":"$(block)*"},{"score":{"name":"@s","objective":"qty"}},{"text":"を"},{"score":{"name":"@s","objective":"sellmoney"}},{"text":"arsで売りました。"}]

return fail