# Parameters:
# - player_id (int): The player id of the player the entity represents

tag @s add dark_civilization.identified_town_core
$execute as @e[tag=dark_civilization.town_core_player_entry,scores={dark_civilization.player_id=$(player_id)},type=minecraft:armor_stand] run return run function dark_civilization:town_core/manage/login_refresh/players_entry
tag @s remove dark_civilization.identified_town_core

# Entry was deleted
execute as @p[tag=dark_civilization.identified_player] run function dark_civilization:town_core/manage/login_refresh/missing_player_entry with storage temp