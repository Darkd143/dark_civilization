# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"view_town_citizen_list"}

# Player is not a citizen of any town
execute unless function dark_civilization:helper/is_citizen_of_any_town run return run function dark_player:utils/tellraw/dp_msg {dp_name:"Dark Civilization",message:"Error: You aren't a citizen of a town. You don't have access to this command."}

# Identify Town Core
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.town_core_id
function dark_civilization:town_core/entities/identify/main with storage temp
data remove storage temp town_core_id

# Nearby core must exist
execute unless function dark_civilization:town_core/helper/town_core_in_player_range run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"A town core with the requested id was not found within range."}

# Run Display
tag @s add dark_civilization.identified_player
execute if score @s dark_civilization.view_town_citizen_list matches 1 run data modify storage temp path_route set value "view_players"
execute if score @s dark_civilization.view_town_citizen_list matches 2 run data modify storage temp path_route set value "manage_requests"
execute if score @s dark_civilization.view_town_citizen_list matches 3 run data modify storage temp path_route set value "manage_players"
execute if score @s dark_civilization.view_town_citizen_list matches 4 run data modify storage temp path_route set value "town_core_menu"
execute if score @s dark_civilization.view_town_citizen_list matches 1..4 run function dark_civilization:triggers/view_town_citizen_list/display/main with storage temp
data remove storage temp path_route
tag @s remove dark_civilization.identified_player

# Cleanup
tag @e[tag=dark_civilization.identified_interaction,type=minecraft:interaction] remove dark_civilization.identified_interaction