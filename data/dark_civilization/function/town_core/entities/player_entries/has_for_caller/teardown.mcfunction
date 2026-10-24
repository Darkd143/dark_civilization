# Remove storage
data remove storage temp player_id

# Failed
execute unless score @s dark_civilization.temp matches 1 run return 0

# Reset score
scoreboard players reset @s dark_civilization.temp

return 1