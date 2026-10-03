# Set Up Storage
data merge storage dialog_temp {"title":"Dark Economy - Set Display Time (Seconds)","exit_action":{"label":"Exit","tooltip":"exit this menu"},"message":"Set the display time for how long to display your money. (in seconds)",key:"new_display_seconds",start:1,end:60,step:1,columns:1,actions:[{ \
      "label": "Set to Infinite", \
      "tooltip": "Click to always display money", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.set_display_seconds set -1" \
      } \
    } \
]}

execute if score @s dark_economy.display_seconds matches 0 run data modify storage dialog_temp initial set value 1
execute if score @s dark_economy.display_seconds matches 1..59 store result storage dialog_temp initial int 1 run scoreboard players get @s dark_economy.display_seconds
execute if score @s dark_economy.display_seconds matches 60.. run data modify storage dialog_temp initial set value 60

# Extra function help
execute store result storage temp display_seconds int 1 run scoreboard players get @s dark_economy.display_seconds
execute store result storage temp default_display_seconds int 1 run scoreboard players get $dark_economy.config dark_economy.display_seconds

function dark_economy:triggers/set_display_seconds/display/store_action_info with storage temp

data remove storage temp display_seconds
data remove storage temp default_display_seconds

# Finish Storage
data modify storage dialog_temp actions append value { \
      "label": "Save", \
      "tooltip": "Click to save the display seconds", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_economy.set_display_seconds set $(new_day)", \
      } \
    } \

# Display
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
data remove storage dialog_temp columns
data remove storage dialog_temp actions