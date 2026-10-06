# Permissions
execute unless function dark_player:permissions/has_dp_op run return run function dark_real_time_clock:triggers/set_hour/permission_denied

# Actions
execute if score @s dark_real_time_clock.set_hour matches -1 run function dark_real_time_clock:triggers/set_hour/set {value:0}
execute if score @s dark_real_time_clock.set_hour matches 1..23 run function dark_real_time_clock:triggers/set_hour/set_nonzero

# Display Dialog
execute if score @s dark_real_time_clock.set_hour matches -2 run function dark_real_time_clock:triggers/set_hour/display/main
execute unless score @s dark_real_time_clock.set_hour matches -2 run function dark_real_time_clock:triggers/menu/display/main

# Enable Trigger
function dark_real_time_clock:triggers/set_hour/enable