function dark_player:afk/coords/set_macro {type:"new"}
execute if function dark_player:afk/coords/new_matches_last run function dark_player:afk/helper/remove_afk
function dark_player:afk/coords/move_new_to_last
function dark_player:afk/coords/reset_macro {type:"new"}