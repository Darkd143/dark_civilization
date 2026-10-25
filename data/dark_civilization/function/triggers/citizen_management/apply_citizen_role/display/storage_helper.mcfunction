# Parameters:
# - player_name (string): The name of the player
# - player_id (string): The id of the player

$data merge storage dialog_temp {message:"Demote $(player_name) to citizen?",yes:{ \
    "label": "Confirm", \
    "tooltip": "Demote $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.apply_citizen_role set -$(player_id)" \
    } \
  }}