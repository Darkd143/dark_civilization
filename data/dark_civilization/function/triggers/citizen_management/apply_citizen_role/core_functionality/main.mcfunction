# Player does not have town permissions
execute unless function dark_civilization:helper/permissions/can_manage_citizen_roles as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to manage citizen roles."}

# Player request found
data merge storage temp {role:"4"}
data merge storage temp {tag:"dark_civilization.identified_player_entry"}
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Failed to find a deputy mayor entry for the requested player. Note: only deputy mayors can be demoted to citizens."}

# Player is high enough level to use the entry
data merge storage temp {role:"5"}
data merge storage temp {tag:"dark_civilization.other_identified_player_entry"}
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Permission Denied: User must be the mayor to demote deputy mayors to citizens."}
tag @e[tag=dark_civilization.other_identified_player_entry] remove dark_civilization.other_identified_player_entry

# Run functionality as the player entry
execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run function dark_civilization:triggers/citizen_management/apply_citizen_role/core_functionality/run

# Cleanup
tag @e[tag=dark_civilization.identified_player_entry] remove dark_civilization.identified_player_entry