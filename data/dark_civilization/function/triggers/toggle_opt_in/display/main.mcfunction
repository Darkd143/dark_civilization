# setup storage
execute if entity @s[tag=!dark_player.opt_in] run data merge storage dialog_temp {title:"Opt In Confirmation","message":"Notice: You are about to opt in to the Dark Civilization datapack Features. Press Confirm to Proceed. Note: You can opt out later if you change your mind.","color":"white",yes:{ \
    "label": "Confirm", \
    "tooltip": "click to opt in", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.Opt_in set 2" \
    } \
  },no:{"label":"Cancel"}}

execute if entity @s[tag=dark_player.opt_in] run data merge storage dialog_temp {title:"Opt Out Confirmation","message":"Warning: You are about to opt out to the Dark Civilization datapack Features. This will remove any civilian or mayor status and may reset your Dark Civilization progress. Press Confirm to Proceed.","color":"gold",yes:{ \
    "label": "Confirm", \
    "tooltip": "click to opt out", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.Opt_in set 2" \
    } \
  },no:{"label":"Cancel"}}

# display dialog
function dark_player:utils/dialog/confirmation with storage dialog_temp

# remove storage
data remove storage dialog_temp title
data remove storage dialog_temp message
data remove storage dialog_temp color
data remove storage dialog_temp yes
data remove storage dialog_temp no