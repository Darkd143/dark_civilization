# Permissions:
# - trigger_name (string): The name of the trigger

$function dark_civilization:triggers/$(trigger_name)/enable
$function dark_player:utils/tellraw/dp_err {dp_name:"Dark Civilization",message:"You do not have permission to trigger dark_civilization.$(trigger_name)."}