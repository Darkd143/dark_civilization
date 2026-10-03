execute unless function dark_player:permissions/has_dp_op run return run function dark_chunk_manager:triggers/set_initial_radius/permission_denied

execute if score @s dark_chunk_manager.set_initial_radius matches 1.. run function dark_chunk_manager:triggers/set_initial_radius/set

# display
execute unless score @s dark_chunk_manager.set_initial_radius matches -1 run function dark_chunk_manager:triggers/worldborder_menu/display/main
execute if score @s dark_chunk_manager.set_initial_radius matches -1 run function dark_chunk_manager:triggers/set_initial_radius/display/main

# reset trigger
function dark_chunk_manager:triggers/set_initial_radius/enable