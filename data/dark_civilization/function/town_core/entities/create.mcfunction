summon minecraft:interaction ~ ~ ~ {Tags:["dark_civilization.town_core","dark_civilization.new_town_core"],width:0.9,height:0.9}
tag @s add dark_civilization.identified_player
execute as @n[distance=..10,tag=dark_civilization.new_town_core,type=minecraft:interaction] run function dark_civilization:town_core/entities/initialize
tag @s remove dark_civilization.identified_player
function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"Successfully created Town Core!"}