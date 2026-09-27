# Set up storage
data merge storage dialog_temp {title:"Dark Real Time Clock - Set Day","exit_action":{"label":"Back","tooltip":"Back to Real Time Clock Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_real_time_clock.menu set 1"}},message:"Change the day using the slider and then save, or set to zero.",key:"new_day",input_label:"change day count",start:1,end:6,step:1,columns:1,actions:[{ \
      "label": "Set day to 0", \
      "tooltip": "Click to set the day count to 0", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_day set -1" \
      } \
    }, \
    { \
      "label": "Save", \
      "tooltip": "Click to save the day count", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_real_time_clock.set_day set $(new_day)", \
      } \
    } \
]}

execute store result storage dialog_temp initial int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.days
execute if score $dark_real_time_clock.clock dark_real_time_clock.days matches 0 run data modify storage dialog_temp initial set value 1

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