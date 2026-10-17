# Set up Storage
data merge storage dialog_temp {title:"Create Town Core","body":[{ \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "Create a town core to start a town? Below are a list of requirements to meet. Make sure you meet all the requirements before selecting 'create'. Note: The town core will be positioned at the xyz block at the positioning of the player's head.", \
        "color": "white" \
      } \
    }], \
  no:{ \
    "label":"Back", \
    "tooltip": "back to civilization menu", \
    "action":{"type": "minecraft:run_command","command": "/trigger dark_civilization.menu"} \
  }}

data modify storage temp cost set from storage dark_civilization.config core_upgrades.1.cost
data modify storage temp town_core_display_item set from storage dark_civilization.config town_core_display_item
data modify storage temp build_requirements set from storage dark_civilization.config core_upgrades.1.build_requirements
data modify storage temp town_core_construction_distance set from storage dark_civilization.config town_core_construction_distance

function dark_civilization:triggers/create_town_core/display/create_prompt/determine_actions with storage temp

data remove storage temp cost
data remove storage temp town_core_display_item
data remove storage temp build_requirements
data remove storage temp town_core_construction_distance

# Display Dialog
function dark_player:utils/dialog/text_list_confirmation with storage dialog_temp

# Remove Storage
data remove storage dialog_temp title
data remove storage dialog_temp body
data remove storage dialog_temp yes
data remove storage dialog_temp no
data remove storage dialog_temp action
