# Player does not have town permissions
execute unless function dark_civilization:helper/permissions/can_manage_citizen_roles as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to manage citizen roles."}

# Player request found
data merge storage temp {role:"3"}
data merge storage temp {tag:"dark_civilization.identified_player_entry"}
execute as @p[tag=dark_civilization.identified_player] run function dark_civilization:triggers/citizen_management/manage/shared/abs_trigger_as_temp {trigger_name:"apply_deputy_mayor_role"}
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Failed to find a citizen entry for the requested player. Note: only citizens can be promoted to deputy mayors."}

# Player is high enough level to use the entry
execute unless function dark_civilization:triggers/citizen_management/manage/shared/editing_yourself unless function dark_civilization:triggers/citizen_management/manage/shared/is_editing_lower_entry as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Permission Denied: User must be the mayor to demote other deputy mayors to citizens."}

# Run functionality as the player entry
execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run function dark_civilization:triggers/citizen_management/apply_deputy_mayor_role/core_functionality/run

# Cleanup
tag @e[tag=dark_civilization.identified_player_entry] remove dark_civilization.identified_player_entry