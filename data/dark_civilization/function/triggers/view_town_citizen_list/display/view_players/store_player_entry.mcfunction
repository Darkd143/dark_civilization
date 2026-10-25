# Permissions:
# - username (string): The username of the player
# - role_name (string): The town role of the player
# - role_color (color): The color for the role

$data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": [{"player":"$(username)"},{"text":"$(username) - ",color:"white"},{"text":"$(role_name)",color:"$(color)"}] \
    }