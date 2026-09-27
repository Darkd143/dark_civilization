# Permissions
execute unless function dark_player:permissions/has_dp_op run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Real Time Clock",message:"You do not have access to dark_real_time_clock.set_day trigger."}

# Actions
execute if score @s dark_real_time_clock.set_day matches -1 run function dark_real_time_clock:triggers/set_day/set {value:0}
execute if score @s dark_real_time_clock.set_day matches 1..6 run function dark_real_time_clock:triggers/set_day/set_nonzero

# Display Dialog
execute if score @s dark_real_time_clock.set_day matches -2 run function dark_real_time_clock:triggers/set_day/display/main
execute unless score @s dark_real_time_clock.set_day matches -2 run function dark_real_time_clock:triggers/menu/display/main

# Enable Trigger
function dark_real_time_clock:triggers/set_day/enable