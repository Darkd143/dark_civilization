# Assign Town ID
function dark_civilization:town_core/id/assign

# Apply Initial Scores
scoreboard players set @s dark_civilization.core_level 1
execute store result score @s dark_civilization.core_range run data get storage dark_civilization.config core_upgrades.1.range

scoreboard players operation @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id = @s dark_civilization.town_core_id
# TODO - set player as mayor

# Forceloading
function dark_chunk_manager:forceloading/entity/setup

# Setup Item Display
function dark_civilization:town_core/entities/item_display/create with storage dark_civilization.config

# Set Name
function dark_civilization:town_core/town_name/store_name

# Remove New Town Core Tag
tag @s remove dark_civilization.new_town_core