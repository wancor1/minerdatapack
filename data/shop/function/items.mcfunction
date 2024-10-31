#pickaxe category0
	execute if entity @s[scores={category=0,type=0}] run \
		item replace entity @s player.crafting.1 with \
		minecraft:wooden_pickaxe[custom_data={menu:"shop",panel:"1",shop:"true"},item_name='{"text":"木のツルハシT1","italic":false}',lore=['{"italic":false,"color":"dark_gray","text":"基本のツルハシ。これがないと始まらない。"}','{"italic":false,"color":"dark_gray","text":"50ars"}','{"italic":false,"color":"yellow","text":"クリックで買う"}']]
	execute if entity @s[scores={category=0,type=1}] run \
		item replace entity @s player.crafting.1 with \
		minecraft:wooden_pickaxe[custom_data={menu:"shop",panel:"1",shop:"true"},item_name='{"text":"木のツルハシT2","italic":false}',lore=['{"italic":false,"color":"dark_gray","text":"ちょっとアップグレードしたツルハシ。掘る速度が上がった。"}','{"italic":false,"color":"dark_gray","text":"150ars"}','{"italic":false,"color":"yellow","text":"クリックで買う"}']]