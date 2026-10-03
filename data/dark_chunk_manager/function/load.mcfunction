# objectives
scoreboard objectives add dark_chunk_manager.loaded_chunks dummy
scoreboard objectives add dark_chunk_manager.worldborder_radius dummy
scoreboard objectives add dark_chunk_manager.worldborder_distance dummy
scoreboard objectives add dark_chunk_manager.total_worldborder_stages dummy
scoreboard objectives add dark_chunk_manager.current_worldborder_stage dummy

# triggers
scoreboard objectives add dark_chunk_manager.menu trigger
scoreboard objectives add dark_chunk_manager.worldborder_menu trigger
scoreboard objectives add dark_chunk_manager.set_total_worldborder_stages trigger
scoreboard objectives add dark_chunk_manager.set_current_worldborder_stage trigger
scoreboard objectives add dark_chunk_manager.set_initial_radius trigger
scoreboard objectives add dark_chunk_manager.set_max_radius trigger

# storage
execute unless data storage dark_chunk_manager.config initial_radius run data modify storage dark_chunk_manager.config initial_radius set value 256
execute unless data storage dark_chunk_manager.config max_radius run data modify storage dark_chunk_manager.config max_radius set value 29999984

# config
execute unless score $dark_chunk_manager.config dark_chunk_manager.loaded_chunks matches 0.. run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.loaded_chunks 0
execute unless score $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages matches 1.. run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages 1
execute unless score $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage matches 1.. run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage 1

# worldborder initialization
execute unless score $dark_chunk_manager.config dark_chunk_manager.worldborder_radius matches 1.. run function dark_chunk_manager:worldborder/recalculate/main