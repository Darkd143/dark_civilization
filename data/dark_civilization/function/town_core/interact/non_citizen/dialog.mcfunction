# Parameters:
# - town_name (string): The name of the town
# - town_core_id (int): The id of the town core

# Set up storage
data merge storage dialog_temp {title:"Dark Civilization - Request Citizenship",color:"white",no:{"label":"Cancel"}}

execute if function dark_civilization:town_core/settings/auto_accept_citizenship_requests run data merge storage dialog_temp {message:"Would you like to become a citizen of $(town_name)?",yes:{ \
    "label": "Confirm", \
    "tooltip": "Become a citizen of $(town_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.request_citizenship set $(town_core_id)" \
    } \
  }}

execute unless function dark_civilization:town_core/settings/auto_accept_citizenship_requests run data merge storage dialog_temp {message:"Request to become a citizen of $(town_name)?",yes:{ \
    "label": "Confirm", \
    "tooltip": "Request citizenship in $(town_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.request_citizenship set $(town_core_id)" \
    } \
  }}

# Display dialog
execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/confirmation with storage dialog_temp

# Remove storage
data remove storage dialog_temp title
data remove storage dialog_temp message
data remove storage dialog_temp color
data remove storage dialog_temp yes
data remove storage dialog_temp no