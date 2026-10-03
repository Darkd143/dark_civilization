execute if score $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage >= $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages run return 0

function dark_chunk_manager:worldborder/radius/double
scoreboard players add $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage 1
function dark_chunk_manager:worldborder/update

execute if score $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage >= $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages run function dark_chunk_manager:worldborder/set {distance:59999968}