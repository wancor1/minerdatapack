# 目の前に何かあったらそこにTP
    execute unless block ^ ^ ^0.7 #server:no_collision run function server:ender_chest/place

# 目の前に何も無くてプレイヤーからそんな離れてなかったらポジションずらして再帰
    execute positioned ^ ^ ^0.7 if block ~ ~ ~ #server:no_collision if entity @s[distance=..360] run function server:ender_chest/playuse