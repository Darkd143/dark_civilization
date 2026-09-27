execute if entity @s[tag=!dark_player.dp_op] run function dark_player:utils/tellraw/dp_err {dp_name:"Dark Player",message:"You do not have permission to access this trigger."}

# Display Dialog
execute if entity @s[tag=dark_player.dp_op] run function dark_player:triggers/op_menu/display/main

# Reset Trigger
function dark_player:triggers/op_menu/enable