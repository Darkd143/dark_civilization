execute if entity @p[tag=dark_civilization.identified_player,scores={dark_civilization.last_menu=1}] run return run data merge storage dialog_temp {no:{ \
    "label": "Cancel", \
    "tooltip": "back to the Request Management Menu", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.view_town_citizen_list set 2" \
    } \
  }}

data merge storage dialog_temp {no:{ \
    "label": "Cancel", \
    "tooltip": "back to the Player Management Menu", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.view_town_citizen_list set 3" \
    } \
  }}