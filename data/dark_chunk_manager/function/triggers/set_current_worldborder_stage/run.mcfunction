execute unless function dark_player:permissions/has_dp_op run return run function dark_chunk_manager:triggers/set_current_worldborder_stage/permission_denied

execute if score @s dark_chunk_manager.set_current_worldborder_stage matches 1.. run function dark_chunk_manager:triggers/set_current_worldborder_stage/set

# display
execute unless score @s dark_chunk_manager.set_current_worldborder_stage matches -1 run function dark_chunk_manager:triggers/worldborder_menu/display/main
execute if score @s dark_chunk_manager.set_current_worldborder_stage matches -1 run function dark_chunk_manager:triggers/set_current_worldborder_stage/display/main

# reset trigger
function dark_chunk_manager:triggers/set_current_worldborder_stage/enable