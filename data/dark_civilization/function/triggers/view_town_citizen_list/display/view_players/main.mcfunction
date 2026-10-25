# Setup storage
function dark_civilization:helper/store_town_name
function dark_civilization:triggers/view_town_citizen_list/display/view_players/title_helper with storage temp
data remove storage temp town_name

execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_civilization.citizen_role=5},type=minecraft:armor_stand] run function dark_civilization:triggers/view_town_citizen_list/display/view_players/get_player_data

execute as @e[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_civilization.citizen_role=4},type=minecraft:armor_stand] run function dark_civilization:triggers/view_town_citizen_list/display/view_players/get_player_data

execute as @e[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_civilization.citizen_role=3},type=minecraft:armor_stand] run function dark_civilization:triggers/view_town_citizen_list/display/view_players/get_player_data

# Display dialog
execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/text_list_with_exit with storage dialog_temp

# Cleanup storage
data remove storage dialog_temp title
data remove storage dialog_temp body
