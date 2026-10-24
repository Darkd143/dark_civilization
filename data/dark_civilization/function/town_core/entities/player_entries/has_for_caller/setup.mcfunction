# Parameters:
# - role (int): The role expected

execute store result storage temp player_id int 1 run scoreboard players get @s dark_player.player_id
$data modify storage temp roles set value $(roles)