# Parameters:
# - distance (int): The distance to check
# - pos_y (int): The y position of the player

$execute positioned ~ $(pos_y) ~ if entity @s[distance=..$(distance)] run scoreboard players add @p[tag=dark_civilization.identified_player] dark_economy.cost 1