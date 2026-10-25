# Parameters:
# - town_name (string): The name of the town

$data merge storage dialog_temp {title:"$(town_name) player list",body:[],exit_action:{ \
    "label": "Back", \
    "tooltip": "back to $(town_name) town core menu", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.view_town_citizen_list set 4" \
    } \
  }}