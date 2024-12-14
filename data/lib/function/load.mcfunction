scoreboard objectives add money dummy "ars"
scoreboard objectives add sellmoney dummy
scoreboard objectives add qty dummy
scoreboard objectives add panel dummy
scoreboard objectives add category dummy
scoreboard objectives add type dummy
scoreboard objectives add ec_menu dummy

#shulker
	execute in overworld run setblock 0 250 0 white_shulker_box{Lock:"汎用シュルカーボックス"} keep

	#enderchest menu
		execute in overworld run setblock 2 250 0 white_shulker_box{Lock:"ec.menu:1"} keep
		execute in overworld run setblock 3 250 0 white_shulker_box{Lock:"ec.menu:2"} keep
		execute in overworld run setblock 4 250 0 white_shulker_box{Lock:"ec.menu:3"} keep
		execute in overworld run setblock 5 250 0 white_shulker_box{Lock:"ec.menu:4"} keep

forceload add 0 0 0 0

title @a[gamemode=!survival,gamemode=!spectator] actionbar "§ereload§r"