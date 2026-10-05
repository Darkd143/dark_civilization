# Reset Trigger
function dark_player:triggers/toggle_afk/enable

# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Apply AFK to yourself
execute unless function dark_player:afk/helper/is_afk run return run function dark_player:afk/helper/apply_afk

# Cannot remove AFK if session is too long
execute if function dark_real_time_clock:session_time/helper/session_is_afk run return run function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Player",message:"{text:'Error: Your AFK status is forced! Your session has been active for over ',color:'red'},{score:{objective:'dark_real_time_clock.hours',name:'$dark_real_time_clock.session'},color:'red'},{text:' hours. Please log out and log back in to start a new session.',color:'red'}"}

# Remove AFK
function dark_player:afk/helper/remove_afk