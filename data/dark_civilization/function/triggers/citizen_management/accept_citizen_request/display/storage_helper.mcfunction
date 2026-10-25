# Parameters:
# - player_name (string): The name of the player
# - player_id (string): The id of the player

$data merge storage dialog_temp {message:"Accept the citizenship request from $(player_name)?",yes:{ \
    "label": "Accept", \
    "tooltip": "Grant citizenship to $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.accept_citizen_request set -$(player_id)" \
    } \
  }}