# Players for playing too long without logging out get automatically set to afk
execute if function dark_real_time_clock:session_time/helper/session_is_afk run return run execute unless function dark_player:afk/helper/is_afk run function dark_player:afk/helper/apply_afk

# Check for players location to determine AFK

function dark_player:afk/coords/set_macro {type:"new"}

# Players AFK are unset if at new location
execute if function dark_player:afk/helper/is_afk unless function dark_player:afk/coords/new_matches_last run function dark_player:afk/helper/remove_afk

# Players not AFK are set if at same location
execute unless function dark_player:afk/helper/is_afk if function dark_player:afk/coords/new_matches_last run function dark_player:afk/helper/apply_afk

function dark_player:afk/coords/move_new_to_last
function dark_player:afk/coords/reset_macro {type:"new"}