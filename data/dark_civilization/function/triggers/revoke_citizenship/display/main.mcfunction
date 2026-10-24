tag @s add dark_civilization.identified_player
execute as @e[type=minecraft:interaction,tag=dark_civilization.town_core] if score @s dark_civilization.town_core_id = @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id at @s run return run function dark_civilization:triggers/revoke_citizenship/display/store_town_info
tag @s remove dark_civilization.identified_player