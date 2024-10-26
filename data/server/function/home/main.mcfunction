#クリックされたかどうか
#home
item replace entity @s player.crafting.0 with minecraft:book[item_name='{"text":"Home","italic":false,"color":"#684107"}',lore=['{"italic":false,"color":"dark_gray","text":"MainMenuに戻る"}']]
execute if items entity @s player.cursor minecraft:book[item_name='{"text":"Home","italic":false,"color":"#684107"}',lore=['{"italic":false,"color":"dark_gray","text":"MainMenuに戻る"}']] run \
	function server:home/click/book
#sell
item replace entity @s player.crafting.2 with minecraft:emerald[item_name='{"text":"Sell","italic":false,"color":"#8d65b8"}',lore=['{"italic":false,"color":"dark_gray","text":"Sellを開く"}']]
execute if items entity @s player.cursor minecraft:emerald[item_name='{"text":"Sell","italic":false,"color":"#8d65b8"}',lore=['{"italic":false,"color":"dark_gray","text":"Sellを開く"}']] run \
	function server:home/click/sell
#none

#none
