# Parameters:
# - town_core_id (int): The id of the core to be found
# - distance (int): The max distance of the core

$execute as @n[distance=..$(distance),tag=dark_civilization.town_core,scores={dark_civilization.town_core_id=$(town_core_id)},type=minecraft:interaction] run tag @s add dark_civilization.identified_interaction