# set up storage
data merge storage dialog_temp {title:"Dark Player - Menu","exit_action":{"label":"Exit","tooltip":"exit this menu"},columns:1,actions:[]}

execute if function dark_player:afk/helper/is_afk run data modify storage dialog_temp actions append value { \
    "label": "Cancel AFK state", \
    "tooltip": "You are currently AFK, click this to unset it", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_player.afk_return" \
    } \
}

data modify storage dialog_temp actions append value { \
    "label": "Economy Menu", \
    "tooltip": "Manage Money", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.menu" \
    } \
}

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns