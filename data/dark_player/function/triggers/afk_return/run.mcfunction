# Reset Trigger
function dark_player:triggers/afk_return/enable

# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Permission Denied for non-afk players
execute unless function dark_player:afk/helper/is_afk run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Player",message:"Error: You are not AFK!"}

# TODO - Cannot remove AFK if session is too long

function dark_player:afk/helper/remove_afk