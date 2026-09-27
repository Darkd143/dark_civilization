# Permissions
execute unless function dark_player:permissions/has_dp_op run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Real Time Clock",message:"You do not have access to dark_real_time_clock.menu trigger."}

# Display Menu
function dark_real_time_clock:triggers/menu/display/main

# Enable Trigger
function dark_real_time_clock:triggers/menu/enable