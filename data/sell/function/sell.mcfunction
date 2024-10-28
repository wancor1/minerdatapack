#block(名前),SP(値段)
#{"block":"","SP":""}

data modify storage qty 1 set from entity @s Inventory[{Slot:82b}].count
execute store result score @s qty run data get storage qty 1

# sell
	# reset
	scoreboard players reset @s sellmoney
	# 値段設定
	$scoreboard players set @s sellmoney $(SP)
	# 値段*個数
	scoreboard players operation @s sellmoney *= @s qty


# ↑ 表示
# ↓ 決定

execute if entity @s[tag=sell.sel] run function sell:s