# Parameters:
# - type (string): "last" or "new"

$execute store result score @s dark_player.$(type)_x run data get entity @s Pos[0]
$execute store result score @s dark_player.$(type)_y run data get entity @s Pos[1]
$execute store result score @s dark_player.$(type)_z run data get entity @s Pos[2]