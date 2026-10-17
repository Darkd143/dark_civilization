# Parameters:
# - distance (int): The distance to check
# - pos_y (int): The y position of the player

$execute positioned ~ $(pos_y) ~ as @p[distance=..$(distance),tag=dark_civilization.identified_player] run scoreboard players add @s dark_economy.cost 1