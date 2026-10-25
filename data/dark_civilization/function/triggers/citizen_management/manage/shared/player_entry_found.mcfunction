execute store result storage temp player_id int 1 run scoreboard players get @p[tag=dark_civilization.identified_player] dark_civilization.temp

scoreboard players reset @s dark_civilization.temp
function dark_civilization:town_core/entities/player_entries/has_for_scores/main with storage temp

# Editing yourself
execute if function dark_civilization:triggers/citizen_management/manage/shared/editing_yourself run return 1

# Determine Result
execute unless entity @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run return 0
return 1