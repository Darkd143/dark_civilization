# Assign Town ID
function dark_civilization:town_core/id/assign

# Apply Initial Scores
scoreboard players set @s dark_civilization.core_level 1

# Setup Item Display
function dark_civilization:town_core/entities/item_display/create with storage dark_civilization.config

# Set Name
function dark_civilization:town_core/town_name/store_name

# Remove New Town Core Tag
tag @s remove dark_civilization.new_town_core