# Parameters:
# - player_name (string): The name of the player
# - player_id (string): The id of the player

$data merge storage dialog_temp {message:"Assign $(player_name) as the new Mayor? Warning, this will demote you to deputy mayor.",yes:{ \
    "label": "Confirm", \
    "tooltip": "Promote $(player_name) to mayor", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.assign_new_mayor set -$(player_id)" \
    } \
  }}