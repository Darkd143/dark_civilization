# RUN THIS AS THE PLAYER ENTRY
# Parameters:
# - role (int): The role of the citizen (-1,1-5)

# Same Rule Applied
execute if score @s dark_civilization.citizen_role = @p[tag=dark_civilization.identified_player] dark_civilization.citizen_role run return 1

# Store town name
execute at @s as @n[distance=..3,tag=dark_civilization.town_core,type=minecraft:interaction] run function dark_civilization:helper/store_town_name

# Output message
function dark_civilization:town_core/manage/player_roles/set/messages with storage temp

# Applying the town core id to the player
scoreboard players operation @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id = @s dark_civilization.town_core_id

# Assign role to player
$execute as @p[tag=dark_civilization.identified_player] run scoreboard players set @s dark_civilization.citizen_role $(role)

# Cleanup
data remove storage temp town_name
data remove storage temp player_id