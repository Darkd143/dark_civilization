# Parameters:
# - player_id (int): The player id of the player the entity represents
# - citizen_role (int): The role of the citizen (2, 3, or 5)

summon minecraft:armor_stand ~ ~ ~ {Tags:["dark_civilization.town_core_player_entry","dark_civilization.new_player_entry"],NoGravity:true,Invisible:true,Invulnerable:true,Marker:true}

# Setup storage
$data modify storage temp player_id set value $(player_id)
$data modify storage temp citizen_role set value $(citizen_role)
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.town_core_id

# Modify player entry
execute as @n[distance=..10,tag=dark_civilization.new_player_entry,type=minecraft:armor_stand] run function dark_civilization:town_core/entities/player_entries/new_setup with storage temp

# Remove storage
data remove storage temp player_id
data remove storage temp citizen_role
data remove storage temp town_core_id