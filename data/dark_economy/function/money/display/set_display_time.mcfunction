# Parameters:
# - entity (string): '@s' or '$dark_economy.config'

$scoreboard players operation $(entity) dark_economy.display_time = $(entity) dark_economy.display_seconds
$scoreboard players operation $(entity) dark_economy.display_time *= $dark_economy.config dark_economy.cost