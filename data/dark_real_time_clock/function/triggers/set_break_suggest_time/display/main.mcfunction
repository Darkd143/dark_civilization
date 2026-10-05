# Set up storage
data merge storage dialog_temp {title:"Dark Real Time Clock - Set Break Suggest Time","exit_action":{"label":"Back","tooltip":"Back to Real Time Clock Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_real_time_clock.menu"}},message:"Change the break suggest time using the slider and then save.",key:"new_break_suggest_time",input_label:"change break suggest time",start:1,end:12,step:1,columns:1,actions:[{ \
      "label": "Disable", \
      "tooltip": "Click to disable break suggest time", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_real_time_clock.set_break_suggest_time set -2", \
      } \
    }, \
    { \
      "label": "Save", \
      "tooltip": "Click to save the break suggest time", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_real_time_clock.set_break_suggest_time set $(new_break_suggest_time)", \
      } \
    } \
]}

execute if score $dark_real_time_clock.session dark_real_time_clock.days matches 1.. store result storage dialog_temp initial int 1 run scoreboard players get $dark_real_time_clock.session dark_real_time_clock.days
execute unless score $dark_real_time_clock.session dark_real_time_clock.days matches 1.. run data modify storage dialog_temp initial set value 1

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