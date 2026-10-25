# Player does not have town permissions
execute unless function dark_civilization:helper/permissions/is_the_town_mayor as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You must be the town mayor to assign a new mayor."}

execute if function dark_civilization:triggers/citizen_management/manage/shared/editing_yourself run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You are already the town mayor."}

# Player request found
data merge storage temp {role:"3..4"}
data merge storage temp {tag:"dark_civilization.identified_player_entry"}
execute as @p[tag=dark_civilization.identified_player] run function dark_civilization:triggers/citizen_management/manage/shared/abs_trigger_as_temp {trigger_name:"assign_new_mayor"}
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Failed to find a citizen or deputy mayor entry for the requested player."}

# Run functionality as the player entry
execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run function dark_civilization:triggers/citizen_management/assign_new_mayor/core_functionality/run

# Cleanup
tag @e[tag=dark_civilization.identified_player_entry] remove dark_civilization.identified_player_entry