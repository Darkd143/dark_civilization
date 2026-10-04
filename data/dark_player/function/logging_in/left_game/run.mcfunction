# If not opt-in, send request opt-in message
execute unless function dark_civilization:opt_in/is_opt_in run function dark_civilization:opt_in/rejoined_game

# Do Stuff after logging back in if opt-in
execute if function dark_civilization:opt_in/is_opt_in run function dark_player:logging_in/left_game/opt_in_login

# Reset left_game
function dark_player:logging_in/left_game/reset