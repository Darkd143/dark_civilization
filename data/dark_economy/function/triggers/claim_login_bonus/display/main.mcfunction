# setup storage
data merge storage dialog_temp {title:"Claim Daily Login Bonus","color":"white",yes:{ \
    "label": "Claim", \
    "tooltip": "claim login bonus", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_economy.claim_login_bonus set 2" \
    } \
  },no:{"label":"Cancel"}}

# Extra Storage Helper
execute store result storage temp money int 1 run scoreboard players get @s dark_economy.login_bonus
function dark_economy:money/login_bonus/message/store_login_bonus_type

# Store Message
function dark_economy:triggers/claim_login_bonus/display/store_message with storage temp

# Remove Storage
data remove storage temp money
data remove storage temp type_string

# display dialog
function dark_player:utils/dialog/confirmation with storage dialog_temp

# remove storage
data remove storage dialog_temp title
data remove storage dialog_temp message
data remove storage dialog_temp color
data remove storage dialog_temp yes
data remove storage dialog_temp no