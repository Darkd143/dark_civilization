# Parameters:
# - town_name (string): The name of the town

# Set up storage
data merge storage dialog_temp {title:"Dark Civilization - Cancel Citizenship Request",color:"white",no:{"label":"Cancel"},message:"Cancel your citizenship request to $(town_name)?",yes:{ \
    "label": "Confirm", \
    "tooltip": "Cancel request to $(town_name)", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.cancel_citizenship_request set 2" \
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