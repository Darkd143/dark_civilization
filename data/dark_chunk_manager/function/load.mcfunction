# objectives
scoreboard objectives add dark_chunk_manager.loaded_chunks dummy

# config
execute unless score $dark_chunk_manager.config dark_chunk_manager.loaded_chunks matches 0.. run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.loaded_chunks 0