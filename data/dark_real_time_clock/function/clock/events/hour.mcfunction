# Event that happens every hour

# Check for AFK
function dark_player:afk/main

# Check for suggesting break
execute if score $dark_real_time_clock.session dark_real_time_clock.days matches 1.. as @a if function dark_civilization:opt_in/is_opt_in run function dark_real_time_clock:session_time/suggest_break