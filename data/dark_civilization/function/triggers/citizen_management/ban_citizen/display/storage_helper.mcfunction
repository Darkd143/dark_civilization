# Parameters:
# - player_name (string): The name of the player
# - player_id (string): The id of the player

$data merge storage dialog_temp {message:"Ban $(player_name) from the town? They will not be able to request access to the town as long as they are banned?.",yes:{ \
    "label": "Confirm", \
    "tooltip": "Ban $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.ban_citizen set -$(player_id)" \
    } \
  }}