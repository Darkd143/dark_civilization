# Set up storage
data merge storage dialog_temp {title:"Dark Chunk Loader - Set Total Worldborder Stages","exit_action":{"label":"Back","tooltip":"Back to Worldborder Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_chunk_manager.worldborder_menu"}},message:"Change the total worldborder stages using the slider and then save.",key:"new_total_worldborder_stages",input_label:"change total worldborder stage",start:1,end:52,step:1,columns:1,actions:[{ \
      "label": "Save", \
      "tooltip": "Click to save the total worldborder stages", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_chunk_manager.set_total_worldborder_stages set $(new_total_worldborder_stages)", \
      } \
    } \
]}

execute if score $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages matches ..-1 run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages 1
execute if score $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages matches 53.. run scoreboard players set $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages 52
execute store result storage dialog_temp initial int 1 run scoreboard players get $dark_chunk_manager.config dark_chunk_manager.total_worldborder_stages

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