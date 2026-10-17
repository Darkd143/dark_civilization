tag @s remove dark_civilization.clicked_town_core

# Player isn't opt-in
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Player isn't near a town core
execute at @s unless entity @n[distance=..8,tag=dark_civilization.town_core,type=minecraft:interaction] run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Error: No Town Core found within eight blocks of the player."}

# Display Dialog
tag @s add dark_civilization.identified_player
execute as @n[distance=..8,tag=dark_civilization.town_core,type=minecraft:interaction] at @s run function dark_civilization:town_core/interact/branch
tag @s remove dark_civilization.identified_player