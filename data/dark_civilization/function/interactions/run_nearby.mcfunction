# Remove tag on player
tag @s remove dark_civilization.clicked_interaction

# Run all nearby interactions with targets
execute as @e[distance=..10,type=minecraft:interaction] if function dark_civilization:interactions/has_target at @s run function dark_civilization:interactions/handle_interaction