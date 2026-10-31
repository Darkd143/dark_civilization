# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"request_citizenship"}

# Player is already a member of a town
execute if function dark_civilization:helper/is_citizen_of_any_town run return run function dark_civilization:town_core/interact/different_town_citizen

# Player has already requested citizenship
execute if function dark_civilization:helper/has_requested_citizenship run return run function dark_civilization:town_core/interact/already_requested_citizenship_somewhere

# Identify Town Core
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.request_citizenship
function dark_civilization:town_core/entities/identify/main with storage temp
data remove storage temp town_core_id

# Nearby core must exist
execute unless function dark_civilization:town_core/helper/town_core_in_player_range run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"A town core with the requested id was not found within range."}

# Player is banned
execute if function dark_civilization:helper/is_banned run return run function dark_civilization:triggers/request_citizenship/banned

# Request Citizenship
tag @s add dark_civilization.identified_player
execute as @n[tag=dark_civilization.identified_town_core,tag=dark_civilization.town_core,type=minecraft:interaction] at @s run function dark_civilization:town_core/manage/request_citizenship/main
tag @s remove dark_civilization.identified_player