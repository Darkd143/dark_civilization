# Set up storage
data merge storage dialog_temp {title:"Dark Chunk Loader - Set Max Radius","exit_action":{"label":"Back","tooltip":"Back to Worldborder Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_chunk_manager.worldborder_menu set -1"}},message:"Change the max radius using the slider and then save.",key:"new_max_radius",input_label:"change max radius",start:16,end:16384,step:16,columns:1,actions:[{ \
      "label": "Save", \
      "tooltip": "Click to save the max radius", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_chunk_manager.set_max_radius set $(new_max_radius)", \
      } \
    } \
]}

execute store result storage dialog_temp initial int 1 run data get storage dark_chunk_manager.config max_radius

# Display Dialog
function dark_player:utils/dialog/int_input with storage dialog_temp

# Remove Storage
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp message
data remove storage dialog_temp key
data remove storage dialog_temp input_label
data remove storage dialog_temp start
data remove storage dialog_temp end
data remove storage dialog_temp step
data remove storage dialog_temp initial
data remove storage dialog_temp actions
data remove storage dialog_temp columns