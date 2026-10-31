# Parameters:
# - player_id (int): The player id
# - role (int): The role expected

# Remove storage
data remove storage temp player_id
data remove storage temp role
data remove storage temp tag

$execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_player.player_id=$(player_id),dark_civilization.citizen_role=$(role)},type=minecraft:armor_stand] run return 1
return 0