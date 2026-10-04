# set up storage
data merge storage dialog_temp {title:"Dark Economy - Menu","exit_action":{"label":"Back","tooltip":"back to player menu","action":{"type": "minecraft:run_command","command": "/trigger dark_player.player_menu"}},columns:1,actions:[]}

# Extra storage for determining actions
function dark_economy:money/login_bonus/message/store_login_bonus_type

execute if function dark_economy:money/display/tag/is_displaying run data modify storage temp active_status set value "Active"
execute unless function dark_economy:money/display/tag/is_displaying run data modify storage temp active_status set value "Inactive"

function dark_economy:triggers/menu/display/determine_actions with storage temp

data remove storage temp active_status
data remove storage temp type_string

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns