# Permission Denied
execute unless function dark_civilization:helper/permissions/can_manage_citizen_roles as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civ",message:"Permission Denied: You do not have permission to access the citizen management menu."}

# Setup storage
function dark_civilization:helper/store_town_name
function dark_civilization:triggers/view_town_citizen_list/display/manage_players/title_helper with storage temp
data remove storage temp town_name

execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_civilization.citizen_role=3..4},type=minecraft:armor_stand] run function dark_civilization:triggers/view_town_citizen_list/display/manage_players/get_player_data
execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_civilization.citizen_role=1},type=minecraft:armor_stand] run function dark_civilization:triggers/view_town_citizen_list/display/manage_players/get_player_data

# Display dialog
# If no requests
execute unless data storage dialog_temp actions[0] as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/text_list_with_exit with storage dialog_temp

# If one or more requests
execute if data storage dialog_temp actions[0] as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/actions with storage dialog_temp

# Cleanup storage
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns
data remove storage dialog_temp actions
data remove storage dialog_temp body