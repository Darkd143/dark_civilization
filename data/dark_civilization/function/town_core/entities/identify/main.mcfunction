# Parameters:
# - town_core_id (int): The id of the core to be found

$execute as @n[distance=..10,tag=dark_civilization.town_core,scores={dark_civilization.town_core_id=$(town_core_id)},type=minecraft:interaction] run tag @s add dark_civilization.identified_interaction