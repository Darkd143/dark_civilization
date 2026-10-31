# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"cancel_citizenship_request"}

# Does not already have a request out
tag @s add dark_civilization.identified_player
execute unless function dark_civilization:helper/has_requested_citizenship run return run function dark_civilization:triggers/cancel_citizenship_request/not_already_requested_citizenship

# Show Dialog
execute unless score @s dark_civilization.cancel_citizenship_request matches 2 run return run function dark_civilization:triggers/cancel_citizenship_request/display/main

# Identify town core
execute as @e[tag=dark_civilization.town_core,type=minecraft:interaction] if score @s dark_civilization.town_core_id = @p[tag=dark_civilization.identified_player] dark_civilization.town_core_id run tag @s add dark_civilization.identified_town_core

# Run as town core
execute as @n[tag=dark_civilization.identified_town_core,tag=dark_civilization.town_core,type=minecraft:interaction] at @s run function dark_civilization:town_core/manage/cancel_citizenship_request/main