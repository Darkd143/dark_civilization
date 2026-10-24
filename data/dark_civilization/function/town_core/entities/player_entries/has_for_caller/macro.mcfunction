# Parameters:
# - player_id (int): The player id
# - role (int): The role expected

$execute if entity @e[distance=..5,tag=dark_civilization.town_core_player_entry,scores={dark_player.player_id=$(player_id),dark_civilization.citizen_role=$(role)},type=minecraft:armor_stand] run return run scoreboard players set @s dark_civilization.temp 1