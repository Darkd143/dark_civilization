# Set to Max
execute if function dark_chunk_manager:worldborder/helper/is_at_max run return run function dark_chunk_manager:worldborder/set_max

# Set Initial Radius
execute store result score $dark_chunk_manager.config dark_chunk_manager.worldborder_radius run data get storage dark_chunk_manager.config initial_radius 1

# At Stage 1 with more stages
execute if score $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage matches 1 run return run function dark_chunk_manager:worldborder/update

# Calculate Radius
# use distance as a temporary variable
scoreboard players set $dark_chunk_manager.config dark_chunk_manager.worldborder_distance 1
function dark_chunk_manager:worldborder/recalculate/loop
function dark_chunk_manager:worldborder/update