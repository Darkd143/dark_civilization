# display dialog
execute if score @s dark_civilization.toggle_opt_in matches 1 run function dark_civilization:triggers/toggle_opt_in/display/main

# toggle opt-in
execute if score @s dark_civilization.toggle_opt_in matches 2.. run function dark_civilization:triggers/toggle_opt_in/toggle

# reset trigger
function dark_civilization:triggers/toggle_opt_in/enable