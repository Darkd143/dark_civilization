# Player does not have town permissions
execute unless function dark_civilization:helper/permissions/can_manage_citizen_requests as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to manage citizen requests."}

# Player request found
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Failed to find a citizen request for the requested player."}

# Store Player id and name
execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,tag=dark_civilization.identified_player_entry,type=minecraft:armor_stand] run function dark_civilization:triggers/citizen_management/accept_citizen_request/core_functionality/run

# Cleanup
tag @e[tag=dark_civilization.identified_player_entry] remove dark_civilization.identified_player_entry