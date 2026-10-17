tag @s add dark_civilization.identified_town_core
execute at @s as @e[distance=..3,tag=dark_civilization.town_core_display,type=minecraft:item_display] if score @s dark_civilization.town_core_id = @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] dark_civilization.town_core_id run kill @s
kill @s