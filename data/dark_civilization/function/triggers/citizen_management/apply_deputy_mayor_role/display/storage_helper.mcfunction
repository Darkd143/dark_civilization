# Parameters:
# - player_name (string): The name of the player
# - player_id (string): The id of the player

$data merge storage dialog_temp {message:"Promote $(player_name) to Deputy Mayor?",yes:{ \
    "label": "Confirm", \
    "tooltip": "Promote $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.apply_deputy_mayor_role set -$(player_id)" \
    } \
  }}