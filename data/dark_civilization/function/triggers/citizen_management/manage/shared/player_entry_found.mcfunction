execute store result storage temp player_id int 1 run scoreboard players get @p[tag=dark_civilization.identified_player] dark_civilization.temp
scoreboard players reset @p[tag=dark_civilization.identified_player] dark_civilization.temp

execute if function dark_civilization:town_core/entities/player_entries/has_for_scores/main run return 1

# Editing yourself
execute if function dark_civilization:triggers/citizen_management/manage/shared/editing_yourself run return 1

# Determine Result
return 0