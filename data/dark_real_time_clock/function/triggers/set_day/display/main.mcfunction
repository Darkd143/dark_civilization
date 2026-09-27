# Set up storage
data merge storage dialog_temp {title:"Dark Real Time Clock - Set Day","exit_action":{"label":"Back","tooltip":"Back to Real Time Clock Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_real_time_clock.menu set 1"}},message:"Change the days using the slider and then save, or set to zero.",key:"new_days",input_label:"change day count",start:1,end:6,step:1,columns:1,actions:[{ \
      "label": "Set days to 0", \
      "tooltip": "Click to set the day count to 0", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_days set -1" \
      } \
    }, \
    { \
      "label": "Save", \
      "tooltip": "Click to save the day count", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_real_time_clock.set_days set $(new_days)", \
      } \
    } \
]}

execute store result storage dialog_temp initial int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.days

# Display Dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns