# Player does not have town permissions
execute unless function dark_civilization:helper/permissions/can_manage_banned_citizens as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to ban citizens."}

# Player request found
data merge storage temp {role:"2..4"}
data merge storage temp {tag:"dark_civilization.identified_player_entry"}
execute as @p[tag=dark_civilization.identified_player] run function dark_civilization:triggers/citizen_management/manage/shared/abs_trigger_as_temp {trigger_name:"ban_citizen"}
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Error: Failed to find a citizen entry for the requested player."}

# Cannot Ban yourself
execute if function dark_civilization:triggers/citizen_management/manage/shared/editing_yourself run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Error: You cannot ban yourself."}

# Player is high enough level to use the entry
execute unless function dark_civilization:triggers/citizen_management/manage/shared/is_editing_lower_entry as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Permission Denied: User must have a higher role than the player they are removing."}

# Run functionality as the player entry
execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run function dark_civilization:triggers/citizen_management/ban_citizen/core_functionality/run

# Cleanup
tag @e[tag=dark_civilization.identified_player_entry] remove dark_civilization.identified_player_entry