# Parameters:
# - tag (string): The tag to apply to the entity

# Remove storage
data remove storage temp player_id
data remove storage temp role
data remove storage temp tag

$execute if entity @n[distance=..3,tag=$(tag),tag=dark_civilization.town_core_player_entry,type=minecraft:armor_stand] run return 1
return 0