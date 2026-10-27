# Setup storage
execute store result storage temp player_id int 1 run scoreboard players get @p[tag=dark_civilization.identified_player] dark_player.player_id
execute unless function dark_civilization:town_core/settings/auto_accept_citizenship_requests run data modify storage temp citizen_role set value 2
execute if function dark_civilization:town_core/settings/auto_accept_citizenship_requests run data modify storage temp citizen_role set value 3

# Assign
function dark_civilization:town_core/entities/player_entries/new_armor_stand with storage temp

# Cleanup storage
data remove storage temp player_id
data remove storage temp citizen_role