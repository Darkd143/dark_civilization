# Set up Storage
data merge storage dialog_temp {title:"Create Town Core","body":[],"color":"white", \
  yes:{ \
    "label": "Create", \
    "tooltip": "click to create town core", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.toggle_opt_in set 2" \
    } \
  }, \
  no:{ \
    "label":"Back", \
    "tooltip": "back to civilization menu", \
    "action":{"type": "minecraft:run_command","command": "/trigger dark_civilization.menu"} \
  }}


# Display Dialog
function dark_player:utils/dialog/text_list_confirmation with storage dialog_temp

# Remove Storage
data remove storage dialog_temp title
data remove storage dialog_temp body
data remove storage dialog_temp yes
data remove storage dialog_temp no
data remove storage dialog_temp action
