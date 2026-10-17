# set up storage
data merge storage dialog_temp {title:"Dark Civilization - Menu","exit_action":{"label":"Back","tooltip":"back to player menu","action":{"type": "minecraft:run_command","command": "/trigger dark_player.player_menu"}},columns:1,actions:[{ \
    "label": "Create Town Core", \
    "tooltip": "Create a town core (click for more information)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.create_town_core" \
    } \
}]}

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns