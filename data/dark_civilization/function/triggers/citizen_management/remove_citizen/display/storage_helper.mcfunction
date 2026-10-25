# Parameters:
# - player_name (string): The name of the player
# - player_id (string): The id of the player

$execute if score @s dark_civilization.citizen_role matches 1 run data merge storage dialog_temp {message:"Unban $(player_name) from the town?",yes:{ \
    "label": "Unban", \
    "tooltip": "unban $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.remove_citizen set -$(player_id)" \
    } \
  }}

$execute if score @s dark_civilization.citizen_role matches 2 run data merge storage dialog_temp {message:"Reject Citizen Request from $(player_name)?",yes:{ \
    "label": "Reject", \
    "tooltip": "reject $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.remove_citizen set -$(player_id)" \
    } \
  }}

$execute if score @s dark_civilization.citizen_role matches 3..4 run data merge storage dialog_temp {message:"Revoke citizenship for $(player_name)?",yes:{ \
    "label": "Revoke", \
    "tooltip": "revoke $(player_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.remove_citizen set -$(player_id)" \
    } \
  }}