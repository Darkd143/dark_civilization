# Set up storage
data merge storage dialog_temp {title:"Dark Chunk Loader - Set Initial Radius","exit_action":{"label":"Back","tooltip":"Back to Worldborder Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_chunk_manager.menu set -1"}},message:"Change the initial radius using the slider and then save.",key:"new_initial_radius",input_label:"change initial radius",start:16,end:16384,step:16,columns:1,actions:[{ \
      "label": "Save", \
      "tooltip": "Click to save the initial radius", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_real_time_clock.set_day set $(new_initial_radius)", \
      } \
    } \
]}

execute store result storage dialog_temp initial int 1 run data get storage dark_chunk_manager.config initial_radius

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