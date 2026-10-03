# Reset Trigger
function dark_economy:triggers/display_money/enable

# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Update Display Time
execute if score @s dark_economy.display_seconds matches 1.. run return run function dark_economy:money/display/set_display_time {entity:"@s"}
execute if score @s dark_economy.display_seconds matches -1 run return run scoreboard players set @s dark_economy.display_time -1
scoreboard players operation @s dark_economy.display_time = $dark_economy.config dark_economy.display_time