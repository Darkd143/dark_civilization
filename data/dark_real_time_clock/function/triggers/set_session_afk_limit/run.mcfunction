# Permissions
execute unless function dark_player:permissions/has_dp_op run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Real Time Clock",message:"You do not have access to dark_real_time_clock.set_session_afk_limit trigger."}

# Actions
execute if score @s dark_real_time_clock.set_session_afk_limit matches 1..24 run scoreboard players operation $dark_real_time_clock.session dark_real_time_clock.hours = @s dark_real_time_clock.set_session_afk_limit

# Display Dialog
execute if score @s dark_real_time_clock.set_session_afk_limit matches -1 run function dark_real_time_clock:triggers/set_session_afk_limit/display/main
execute unless score @s dark_real_time_clock.set_session_afk_limit matches -1 run function dark_real_time_clock:triggers/menu/display/main

# Enable Trigger
function dark_real_time_clock:triggers/set_session_afk_limit/enable