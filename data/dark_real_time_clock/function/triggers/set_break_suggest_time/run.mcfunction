# Permissions
execute unless function dark_player:permissions/has_dp_op run return run function dark_real_time_clock:triggers/set_break_suggest_time/permission_denied

# Actions
execute if score @s dark_real_time_clock.set_break_suggest_time matches 1..12 run scoreboard players operation $dark_real_time_clock.session dark_real_time_clock.days = @s dark_real_time_clock.set_break_suggest_time
execute if score @s dark_real_time_clock.set_break_suggest_time matches -2 run scoreboard players set $dark_real_time_clock.session dark_real_time_clock.days -1

# Display Dialog
execute if score @s dark_real_time_clock.set_break_suggest_time matches -1 run function dark_real_time_clock:triggers/set_break_suggest_time/display/main
execute unless score @s dark_real_time_clock.set_break_suggest_time matches -1 run function dark_real_time_clock:triggers/menu/display/main

# Enable Trigger
function dark_real_time_clock:triggers/set_break_suggest_time/enable