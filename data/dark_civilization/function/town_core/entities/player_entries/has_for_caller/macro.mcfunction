# Parameters:
# - player_id (int): The player id
# - role (int): The role expected

# Remove storage
data remove storage temp player_id
data remove storage temp role

$execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_player.player_id=$(player_id),dark_civilization.citizen_role=$(role)},type=minecraft:armor_stand] run return run tag @s add dark_civilization.identified_player_entry
return 0