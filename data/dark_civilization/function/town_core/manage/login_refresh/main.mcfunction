# Parameters:
# - town_core_id (int): The id of the town core
# - player_id (int): The player id of the player the entity represents

tag @s add dark_civilization.identified_player
$execute as @e[tag=dark_civilization.town_core,scores={dark_civilization.town_core_id=$(town_core_id)},type=minecraft:interaction] run return run function dark_civilization:town_core/manage/login_refresh/players_core {player_id:$(player_id)}
tag @s remove dark_civilization.identified_player

# TODO: Core was deleted