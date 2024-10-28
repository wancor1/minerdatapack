# メニュークリック検知
	execute unless items entity @s player.crafting.0 #sell:sellpanelitem[custom_data={panel:"0"}] if items entity @s player.crafting.1 #sell:sellpanelitem[custom_data={panel:"1"}] if items entity @s player.crafting.2 #sell:sellpanelitem[custom_data={panel:"2"}] if items entity @s player.crafting.3 #sell:sellpanelitem[custom_data={panel:"3"}] run function menu:click/book
	execute unless items entity @s player.crafting.1 #sell:sellpanelitem[custom_data={panel:"1"}] if items entity @s player.crafting.0 #sell:sellpanelitem[custom_data={panel:"0"}] if items entity @s player.crafting.2 #sell:sellpanelitem[custom_data={panel:"2"}] if items entity @s player.crafting.3 #sell:sellpanelitem[custom_data={panel:"3"}] run function sell:click/none
	execute unless items entity @s player.crafting.2 #sell:sellpanelitem[custom_data={panel:"2"}] if items entity @s player.crafting.0 #sell:sellpanelitem[custom_data={panel:"0"}] if items entity @s player.crafting.1 #sell:sellpanelitem[custom_data={panel:"1"}] if items entity @s player.crafting.3 #sell:sellpanelitem[custom_data={panel:"3"}] run function sell:click/select
	execute unless items entity @s player.crafting.3 #sell:sellpanelitem[custom_data={panel:"3"}] if items entity @s player.crafting.0 #sell:sellpanelitem[custom_data={panel:"0"}] if items entity @s player.crafting.1 #sell:sellpanelitem[custom_data={panel:"1"}] if items entity @s player.crafting.2 #sell:sellpanelitem[custom_data={panel:"2"}] run function sell:click/sel

#inv閉じたとき
	execute unless items entity @s player.crafting.0 #sell:sellpanelitem unless items entity @s player.crafting.1 #sell:sellpanelitem unless items entity @s player.crafting.2 #sell:sellpanelitem unless items entity @s player.crafting.3 #sell:sellpanelitem run function sell:reload




