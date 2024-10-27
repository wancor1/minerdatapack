# メニュークリック検知
    execute unless items entity @s player.crafting.0 #menu:invpanelitem[custom_data={panel:"0"}] if items entity @s player.crafting.1 #menu:invpanelitem[custom_data={panel:"0"}] if items entity @s player.crafting.2 #menu:invpanelitem if items entity @s player.crafting.3 #menu:invpanelitem run function menu:click/book
    execute unless items entity @s player.crafting.1 #menu:invpanelitem[custom_data={panel:"1"}] if items entity @s player.crafting.0 #menu:invpanelitem[custom_data={panel:"1"}] if items entity @s player.crafting.2 #menu:invpanelitem if items entity @s player.crafting.3 #menu:invpanelitem run function menu:click/none
    execute unless items entity @s player.crafting.2 #menu:invpanelitem[custom_data={panel:"2"}] if items entity @s player.crafting.0 #menu:invpanelitem[custom_data={panel:"2"}] if items entity @s player.crafting.1 #menu:invpanelitem if items entity @s player.crafting.3 #menu:invpanelitem run function menu:click/sell
    execute unless items entity @s player.crafting.3 #menu:invpanelitem[custom_data={panel:"3"}] if items entity @s player.crafting.0 #menu:invpanelitem[custom_data={panel:"3"}] if items entity @s player.crafting.1 #menu:invpanelitem if items entity @s player.crafting.2 #menu:invpanelitem run function menu:click/none

#inv閉じたとき
	execute unless items entity @s player.crafting.0 #menu:invpanelitem unless items entity @s player.crafting.1 #menu:invpanelitem unless items entity @s player.crafting.2 #menu:invpanelitem unless items entity @s player.crafting.3 #menu:invpanelitem run function menu:reload

#idea by mash
#THX!