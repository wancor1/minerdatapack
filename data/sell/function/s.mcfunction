# del item
	item replace entity @s player.crafting.2 with air 1
	item replace entity @s player.cursor with air 1

# add money
	scoreboard players operation @s money += @s sellmoney

# message
	$tellraw @s [{"text":"$(block)*"},{"score":{"name":"@s","objective":"qty"}},{"text":"を"},{"score":{"name":"@s","objective":"sellmoney"}},{"text":"arsで売りました。"}]