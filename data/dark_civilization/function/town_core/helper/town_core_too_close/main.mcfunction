# Setup Storage
data modify storage temp distance set from storage dark_civilization.config town_core_construction_distance
execute store result storage temp pos_y int 1 run data get entity @s Pos[1]

scoreboard players set @s dark_economy.cost 0

# Check all town cores withing 500 blocks
tag @s add dark_civilization.identified_player
execute as @e[distance=..500,tag=dark_civilization.town_core,type=minecraft:interaction] run function dark_civilization:town_core/helper/town_core_too_close/check_one with storage temp
tag @s remove dark_civilization.identified_player

# Determine
execute if score @s dark_economy.cost matches 1.. run return run scoreboard players reset @s dark_economy.cost
scoreboard players reset @s dark_economy.cost
return 0