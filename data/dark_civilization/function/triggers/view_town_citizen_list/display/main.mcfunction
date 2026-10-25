# Parameters:
# - path_route (string): The path route to the display to show

$execute as @n[distance=..10,tag=dark_civilization.identified_interaction,type=minecraft:interaction] at @s run function dark_civilization:triggers/view_town_citizen_list/display/$(path_route)/main