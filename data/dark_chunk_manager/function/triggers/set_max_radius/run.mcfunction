execute unless function dark_player:permissions/has_dp_op run return run function dark_chunk_manager:triggers/set_max_radius/permission_denied

execute if score @s dark_chunk_manager.set_max_radius matches 1.. run function dark_chunk_manager:triggers/set_max_radius/set

# display
execute if score @s dark_chunk_manager.set_max_radius matches -1 run function dark_chunk_manager:triggers/set_max_radius/display/main

# reset trigger
function dark_chunk_manager:triggers/set_max_radius/enable