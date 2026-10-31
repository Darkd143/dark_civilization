# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/citizen_management/manage/permissions/permission_denied {trigger_name:"ban_citizen"}

# Identify Town Core
function dark_civilization:triggers/citizen_management/manage/shared/abs_trigger_as_temp {trigger_name:"ban_citizen"}
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.temp
function dark_civilization:town_core/entities/identify/main with storage temp
data remove storage temp town_core_id
scoreboard players reset @s dark_civilization.temp

# Nearby core must exist
execute unless function dark_civilization:town_core/helper/town_core_in_player_range run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"A town core with the requested id was not found within range."}

scoreboard players reset @s dark_economy.cost

# Request Citizenship
tag @s add dark_civilization.identified_player
execute as @n[tag=dark_civilization.identified_town_core,tag=dark_civilization.town_core,type=minecraft:interaction] at @s run function dark_civilization:triggers/citizen_management/ban_citizen/core_functionality/main
tag @s remove dark_civilization.identified_player
tag @e[tag=dark_civilization.other_identified_player_entry] remove dark_civilization.other_identified_player_entry

# Back to menu
execute unless score @s dark_economy.cost matches 1 run function dark_civilization:triggers/citizen_management/manage/shared/back_to_menu
scoreboard players reset @s dark_economy.cost

# Cleanup
tag @e[tag=dark_civilization.identified_town_core,type=minecraft:interaction] remove dark_civilization.identified_town_core