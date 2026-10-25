# Permissions:
# - username (string): The username of the player
# - player_id (string): The id of the player

$data modify storage dialog_temp actions append value { \
    "label": [{player:"$(username)"},{text:" $(username)",color:"white"}] \
}

$data modify storage dialog_temp actions append value { \
    "label": "Accept", \
    "tooltip": "accept $(username) as a citizen", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.accept_citizen_request set $(player_id)" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Reject", \
    "tooltip": "reject citizenship request from $(username)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.reject_citizen_request set $(player_id)" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Ban", \
    "tooltip": "ban $(username) from requesting citizenship", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.ban_citizen set $(player_id)" \
    } \
}