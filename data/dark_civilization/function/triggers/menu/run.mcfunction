# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have permission to trigger dark_civilization.menu."}

# Display Dialog
function dark_civilization:triggers/menu/display/main