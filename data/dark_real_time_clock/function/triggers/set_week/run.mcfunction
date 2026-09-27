# Permissions
execute unless function dark_player:permissions/has_dp_op run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Real Time Clock",message:"You do not have access to dark_real_time_clock.set_week trigger."}

# Actions
execute if score @s dark_real_time_clock.set_week matches -1 run function dark_real_time_clock:triggers/set_week/set {value:0}
execute if score @s dark_real_time_clock.set_week matches 1.. run function dark_real_time_clock:triggers/set_week/set_nonzero

# Display Dialog
execute if score @s dark_real_time_clock.set_week matches -2 run function dark_real_time_clock:triggers/set_week/display/main
execute unless score @s dark_real_time_clock.set_week matches -2 run function dark_real_time_clock:triggers/menu/display/main

# Enable Trigger
function dark_real_time_clock:triggers/set_week/enable