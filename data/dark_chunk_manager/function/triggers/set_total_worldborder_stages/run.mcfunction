execute unless function dark_player:permissions/has_dp_op run return run function dark_chunk_manager:triggers/set_total_worldborder_stages/permission_denied

execute if score @s dark_chunk_manager.set_total_worldborder_stages matches 1.. run function dark_chunk_manager:triggers/set_total_worldborder_stages/set

# display
execute if score @s dark_chunk_manager.set_total_worldborder_stages matches -1 run function dark_chunk_manager:triggers/set_total_worldborder_stages/display/main

# reset trigger
function dark_chunk_manager:triggers/set_total_worldborder_stages/enable