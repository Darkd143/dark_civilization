# Set up storage
data merge storage dialog_temp {title:"Dark Real Time Clock - Set Session AFK Limit","exit_action":{"label":"Back","tooltip":"Back to Real Time Clock Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_real_time_clock.menu"}},message:"Change the Session AFK Limit using the slider and then save.",key:"new_session_afk_limit",input_label:"change session AFK limit",start:1,end:23,step:1,columns:1,actions:[{ \
      "label": "Save", \
      "tooltip": "Click to save the session AFK limit", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_real_time_clock.set_session_afk_limit set $(new_session_afk_limit)", \
      } \
    } \
]}

execute store result storage dialog_temp initial int 1 run scoreboard players get $dark_real_time_clock.session dark_real_time_clock.hours
execute if score $dark_real_time_clock.clock dark_real_time_clock.hours matches 0 run data modify storage dialog_temp initial set value 1

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