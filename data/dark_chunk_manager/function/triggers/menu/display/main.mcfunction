# set up storage
data merge storage dialog_temp {title:"Dark Chunk Manager - Menu","exit_action":{"label":"Back","tooltip":"back to operator menu","action":{"type": "minecraft:run_command","command": "/trigger dark_player.op_menu"}},columns:1,actions:[{ \
    "label": "Dark Worldborder Menu", \
    "tooltip": "Click to view and edit the worldborder", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_chunk_manager.worldborder_menu" \
    } \
}]}

# display dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns