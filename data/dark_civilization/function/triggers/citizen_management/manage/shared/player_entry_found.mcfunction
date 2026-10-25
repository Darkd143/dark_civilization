execute as @p[tag=dark_civilization.identified_player] run function dark_civilization:triggers/citizen_management/manage/shared/abs_trigger_as_temp {trigger_name:"accept_citizen_request"}

data merge storage temp {role:2}
execute store result storage temp player_id int 1 run scoreboard players get @p[tag=dark_civilization.identified_player] dark_civilization.temp

scoreboard players reset @s dark_civilization.temp
function dark_civilization:town_core/entities/player_entries/has_for_scores/main with storage temp

# Determine Result
execute unless entity @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run return 0
return 1