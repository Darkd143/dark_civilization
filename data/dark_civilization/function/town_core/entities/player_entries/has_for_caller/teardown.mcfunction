# Parameters:
# - tag (string): The tag to apply to the entity

# Remove storage
data remove storage temp player_id
data remove storage temp role
data remove storage temp tag

$execute if data storage temp keep_tag as entity @n[distance=..3,tag=$(tag),tag=dark_civilization.town_core_player_entry,type=minecraft:armor_stand] run return 1
$execute unless data storage temp keep_tag as entity @n[distance=..3,tag=$(tag),tag=dark_civilization.town_core_player_entry,type=minecraft:armor_stand] run return run tag @s remove $(tag)
return 0