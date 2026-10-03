# Reset Trigger
function dark_economy:triggers/display_money/enable

# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Update Display Time
scoreboard players set @s dark_economy.display_time 200