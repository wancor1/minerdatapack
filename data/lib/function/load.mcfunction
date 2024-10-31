scoreboard objectives add money dummy "ars"
scoreboard objectives add sellmoney dummy
scoreboard objectives add qty dummy
scoreboard objectives add panel dummy
scoreboard objectives add category dummy
scoreboard objectives add type dummy

execute in overworld run setblock 0 250 0 white_shulker_box{Lock:"汎用シュルカーボックス"}

forceload add 0 0 0 0

title @a[gamemode=!survival,gamemode=!spectator] actionbar "§ereload§r"