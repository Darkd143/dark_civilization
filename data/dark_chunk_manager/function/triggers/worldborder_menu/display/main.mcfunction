# set up storage
data merge storage dialog_temp {title:"Dark Chunk Manager - Menu","exit_action":{"label":"Back","tooltip":"back to chunk manager menu","action":{"type": "minecraft:run_command","command": "/trigger dark_chunk_manager.menu"}},columns:1,actions:[]}

# set up actions
execute store result storage temp total_worldborder_stages int 1 run scoreboard players get $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages
execute store result storage temp current_worldborder_stage int 1 run scoreboard players get $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage
execute store result storage temp initial_radius int 1 run data get storage dark_chunk_manager.config initial_radius
execute store result storage temp max_radius int 1 run data get storage dark_chunk_manager.config max_radius

function dark_chunk_manager:triggers/worldborder_menu/display/determine_actions with storage temp

data remove storage temp total_worldborder_stages
data remove storage temp current_worldborder_stage
data remove storage temp initial_radius
data remove storage temp max_radius

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns