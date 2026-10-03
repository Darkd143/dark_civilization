# set up storage
data merge storage dialog_temp {title:"Dark Player - Operator Menu","exit_action":{"label":"Exit","tooltip":"exit this menu"},columns:1,actions:[{ \
    "label": "Dark Real Time Clock Menu", \
    "tooltip": "Click to view and edit the clock", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.menu" \
    } \
}, \
{ \
    "label": "Dark Chunk Manager Menu", \
    "tooltip": "Click to view and edit the chunk manager and worldborder", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_chunk_manager.menu" \
    } \
}]}

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns