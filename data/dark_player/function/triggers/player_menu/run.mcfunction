# Reset Trigger
function dark_player:triggers/player_menu/enable

# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:opt_in/not_opt_in_response

# Display
function dark_player:triggers/player_menu/display/main