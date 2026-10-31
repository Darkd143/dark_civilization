# Parameters:
# - player_id (int): The id of the player

$execute as @e[tag=dark_civilization.town_core_player_entry,scores={dark_player.player_id=$(player_id),type=minecraft:armor_stand}] at @s run function dark_civilization:town_core/entities/player_entries/remove