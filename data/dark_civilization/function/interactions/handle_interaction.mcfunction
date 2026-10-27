# Tag target
execute on target run tag @s add dark_civilization.identified_player

# Reset Interaction Target
data remove entity @s interaction

# Player isn't opt-in
execute as @p[tag=dark_civilization.identified_player] unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Target is within 10 blocks
execute unless entity @p[distance=..10,tag=dark_civilization.identified_player] as @a run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Error! Failed to find an identified player for an interaction."}

# Tag interaction
tag @s add dark_civilization.identified_interaction

# Determine Interaction Type
execute unless function dark_civilization:interactions/run_interaction_type run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"Error: Failed to find a valid command for the identified interaction."}

function dark_civilization:triggers/manage/shared/remove_all_identified_tags