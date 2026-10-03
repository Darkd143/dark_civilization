scoreboard players operation $dark_chunk_manager.config dark_chunk_manager.worldborder_distance = $dark_chunk_manager.config dark_chunk_manager.worldborder_radius
scoreboard players operation $dark_chunk_manager.config dark_chunk_manager.worldborder_distance += $dark_chunk_manager.config dark_chunk_manager.worldborder_distance

# Set up Storage
execute store result storage temp distance int 1 run scoreboard players get $dark_chunk_manager.config dark_chunk_manager.worldborder_distance

# Update Worldborder
function dark_chunk_manager:worldborder/set with storage temp

# Remove Storage
data remove storage temp distance