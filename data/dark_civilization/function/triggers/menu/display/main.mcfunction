# set up storage
data merge storage dialog_temp {title:"Dark Civilization - Menu","exit_action":{"label":"Back","tooltip":"back to player menu","action":{"type": "minecraft:run_command","command": "/trigger dark_player.player_menu"}},columns:1,actions:[]}

execute unless function dark_civilization:helper/is_citizen_of_any_town unless function dark_civilization:helper/has_requested_citizenship run data modify storage dialog_temp actions append value { \
    "label": "Create Town Core", \
    "tooltip": "Create a town core (click for more information)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.create_town_core" \
    } \
}

execute if function dark_civilization:helper/is_citizen_of_any_town run data modify storage dialog_temp actions append value { \
    "label": "Revoke Citizenship", \
    "tooltip": "Revoke town citizenship", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.revoke_citizenship" \
    } \
}

execute if function dark_civilization:helper/has_requested_citizenship run data modify storage dialog_temp actions append value { \
    "label": "Cancel Citizenship Request", \
    "tooltip": "Cancel your citizen request", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.cancel_citizenship_request" \
    } \
}

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns