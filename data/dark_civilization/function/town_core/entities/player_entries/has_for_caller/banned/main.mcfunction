# RUN THIS FILE AS THE PLAYER

# Setup storage
execute store result storage temp player_id int 1 run scoreboard players get @s dark_player.player_id

# Run Function
function dark_civilization:town_core/entities/player_entries/has_for_caller/banned/macro with storage temp

# Remove storage
data remove storage temp player_id

# Failed
execute unless score @s dark_civilization.temp matches 1 run return 0

# Reset score
scoreboard players reset @s dark_civilization.temp

return 1