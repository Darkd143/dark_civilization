execute if function dark_civilization:helper/is_citizen_of_any_town run return 0
execute as @e[tag=dark_civilization.town_core,type=minecraft:interaction] at @s as @p[tag=dark_civilization.identified_player] if function dark_civilization:town_core/entities/player_entries/has_for_caller/types/requestor run return 1
return 0