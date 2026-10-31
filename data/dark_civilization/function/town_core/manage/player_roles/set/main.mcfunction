# RUN THIS AS THE PLAYER ENTRY
# Parameters:
# - role (int): The role of the citizen (-1,1-5)

# Store town name
execute at @s as @n[distance=..3,tag=dark_civilization.town_core,type=minecraft:interaction] run function dark_civilization:helper/store_town_name

# Output message
function dark_civilization:town_core/manage/player_roles/set/messages with storage temp

# Cleanup
data remove storage temp town_name
data remove storage temp player_id

# Updating Player Scores
$execute unless score @s dark_civilization.citizen_role matches -1..1 run function dark_civilization:town_core/manage/player_roles/set/update_player {role:$(role)}
execute if score @s dark_civilization.citizen_role matches -1..1 as @p[tag=dark_civilization.identified_player] run function dark_civilization:town_core/manage/player_roles/reset/scores

# Remove Entity
execute as @s[tag=dark_civilization.staged_for_removal] run function dark_civilization:town_core/entities/player_entries/remove
