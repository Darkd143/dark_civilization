# Player isn't opt-in
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Remove tag on player
tag @s remove dark_civilization.clicked_interaction

# Run all nearby interactions with targets
execute as @e[distance=..10,type=minecraft:interaction] if function dark_civilization:interactions/has_target at @s run function dark_civilization:interactions/handle_interaction