function dark_chunk_manager:worldborder/radius/double
scoreboard players add $dark_chunk_manager.config dark_chunk_manager.worldborder_distance 1

# Break
execute if score $dark_chunk_manager.config dark_chunk_manager.worldborder_distance >= $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage run return 1

# Repeat Loop
function dark_chunk_manager:worldborder/recalculate/loop