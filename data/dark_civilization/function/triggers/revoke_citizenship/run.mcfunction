# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"revoke_citizenship"}

# Not a citizen of a town
tag @s add dark_civilization.identified_player
execute unless function dark_civilization:helper/is_a_town_citizen run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have a citizenship to revoke."}

# Is town mayor
execute if function dark_civilization:helper/is_mayor_of_a_town run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You cannot revoke your citizenship without assigning a new mayor. To assign a new mayor, interact with the town core."}

# Display dialog
execute unless score @s dark_civilization.revoke_citizenship matches 2 at @s run return run function dark_civilization:triggers/revoke_citizenship/display/main

# Identify town core
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.temp
function dark_civilization:town_core/entities/identify/main with storage temp
data remove storage temp town_core_id

# Run as town core
execute as @n[tag=dark_civilization.identified_town_core,tag=dark_civilization.town_core,type=minecraft:interaction] at @s run function dark_civilization:town_core/manage/revoke_citizenship/main