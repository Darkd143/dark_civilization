# Parameters:
# - player_id (int): The player id of the player the entity represents
# - citizen_role (int): The role of the citizen (3 or 5)

summon minecraft:armor_stand ~ ~ ~ {Tags:["dark_civilization.town_core_player_entry","dark_civilization.new_player_entry"],NoGravity:true,Invisible:true,Invulnerable:true,Marker:true}
$execute as @n[distance=..10,tag=dark_civilization.new_player_entry,type=minecraft:armor_stand] run function dark_civilization:town_core/entities/player_entries/new_setup {citizen_role:$(citizen_role),player_id:$(player_id)}