# RUN THIS FUNCTION AS THE CORE, AT THE CORE

tag @s add dark_civilization.identified_town_core
execute as @e[distance=..3,tag=dark_civilization.town_core_display,type=minecraft:item_display] if score @s dark_civilization.town_core_id = @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] dark_civilization.town_core_id run kill @s
execute as @e[distance=..3,tag=dark_civilization.town_core_player_entry,type=minecraft:armor_stand] if score @s dark_civilization.town_core_id = @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] dark_civilization.town_core_id run kill @s
execute as @a[scores={dark_civilization.town_core_id=1..}] if score @s dark_civilization.town_core_id = @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] dark_civilization.town_core_id run function dark_civilization:town_core/manage/revoke_citizenship/reset_player_data
function dark_chunk_manager:forceloading/entity/teardown
kill @s