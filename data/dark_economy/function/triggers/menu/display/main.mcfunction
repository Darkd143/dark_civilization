# set up storage
data merge storage dialog_temp {title:"Dark Economy - Menu","exit_action":{"label":"Back","tooltip":"back to player menu"},columns:1,actions:[]}

execute if function dark_economy:money/display/tag/is_displaying run function dark_economy:triggers/menu/display/determine_actions {active_status:"Active"}
execute unless function dark_economy:money/display/tag/is_displaying run function dark_economy:triggers/menu/display/determine_actions {active_status:"Inactive"}

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns