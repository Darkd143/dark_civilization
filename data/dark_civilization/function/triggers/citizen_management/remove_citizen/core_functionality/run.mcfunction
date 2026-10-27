# Advanced Permissions
execute if score @s dark_civilization.citizen_role matches 1 as @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] unless function dark_civilization:helper/permissions/can_manage_banned_citizens as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to unban citizens."}

execute if score @s dark_civilization.citizen_role matches 2 as @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] unless function dark_civilization:helper/permissions/can_manage_citizen_requests as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to reject citizen requests."}

execute if score @s dark_civilization.citizen_role matches 3..4 as @n[distance=..3,tag=dark_civilization.identified_town_core,type=minecraft:interaction] unless function dark_civilization:helper/permissions/can_remove_citizens as @p[tag=dark_civilization.identified_player] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have town permission to remove citizens."}

# Setup storage
function dark_civilization:triggers/citizen_management/manage/shared/store_entry_data

# Show Warning Dialog
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.remove_citizen matches 1.. run function dark_civilization:triggers/citizen_management/remove_citizen/display/main
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.remove_citizen matches ..-1 run function dark_civilization:town_core/entities/player_entries/assign {role:-1}

# Cleanup
data remove storage temp player_name
data remove storage temp player_id