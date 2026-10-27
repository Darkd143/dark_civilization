# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"cancel_citizenship_request"}

# Does not already have a request out
tag @s add dark_civilization.identified_player
execute unless function dark_civilization:helper/has_requested_citizenship run return run function dark_civilization:triggers/cancel_citizenship_request/not_already_requested_citizenship

# Show Dialog
execute unless score @s dark_civilization.cancel_citizenship_request matches 2 run return run function dark_civilization:triggers/cancel_citizenship_request/display/main

# Identify town core
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.temp
function dark_civilization:town_core/entities/identify/main with storage temp
data remove storage temp town_core_id

# Run as town core
execute as @n[tag=dark_civilization.identified_interaction,tag=dark_civilization.town_core,type=minecraft:interaction] at @s run function dark_civilization:town_core/manage/cancel_citizenship_request/main