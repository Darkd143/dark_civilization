# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_economy:triggers/set_display_seconds/permission_denied

# Update Display Seconds
execute if score @s dark_economy.set_display_seconds matches 1.. run function dark_economy:triggers/set_display_seconds/set/main
execute if score @s dark_economy.set_display_seconds matches -1 run function dark_economy:triggers/set_display_seconds/set/infinite
execute if score @s dark_economy.set_display_seconds matches -2 run function dark_economy:triggers/set_display_seconds/set/disable

# Display
execute if score @s dark_economy.set_display_seconds matches -3 run function dark_economy:triggers/set_display_seconds/display/main

# Reset Trigger
function dark_economy:triggers/set_display_seconds/enable