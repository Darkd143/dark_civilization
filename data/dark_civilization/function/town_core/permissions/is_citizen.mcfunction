execute unless score @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id = @s dark_civilization.town_core_id run return 0
execute at @n[tag=dark_civilization.identified_interaction,type=minecraft:interaction] as @p[tag=dark_civilization.identified_player] if function dark_civilization:town_core/entities/player_entries/has_for_caller/citizen_plus/main run return 1
return 0