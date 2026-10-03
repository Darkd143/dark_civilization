# Set up storage
data merge storage dialog_temp {title:"Dark Chunk Loader - Set Current Worldborder Stage","exit_action":{"label":"Back","tooltip":"Back to Worldborder Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_chunk_manager.worldborder_menu set -1"}},message:"Change the current worldborder stage using the slider and then save.",key:"new_current_worldborder_stage",input_label:"change current worldborder stage",start:1,step:1,columns:1,actions:[{ \
      "label": "Save", \
      "tooltip": "Click to save the current worldborder stages", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_chunk_manager.set_worldborder_stage set $(new_current_worldborder_stage)", \
      } \
    } \
]}

# initial
execute if score $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage matches 0 run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage 1
execute if score $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage > $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages run scoreboard players operation $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage = $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages
execute store result storage dialog_temp initial int 1 run scoreboard players get $dark_chunk_manager.config dark_chunk_manager.current_worldborder_stage

# end
execute if score $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages matches 0 run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages 1
execute store result storage dialog_temp end int 1 run scoreboard players get $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages

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