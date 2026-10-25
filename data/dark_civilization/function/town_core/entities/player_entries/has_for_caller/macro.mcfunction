# Parameters:
# - player_id (int): The player id
# - role (int): The role expected
# - tag (string): The tag to apply to the entity

$execute as @n[distance=..3,tag=dark_civilization.town_core_player_entry,scores={dark_player.player_id=$(player_id),dark_civilization.citizen_role=$(role)},type=minecraft:armor_stand] run return run tag @s $(tag)