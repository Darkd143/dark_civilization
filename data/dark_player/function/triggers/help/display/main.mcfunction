# set up storage
data merge storage dialog_temp {"title":"Dark Player - Help Menu",body:[{ \
      "type": "minecraft:plain_message", \
      "contents": "1. This is first message" \
    }]}

# display dialog
function dark_player:utils/dialog/text_list with storage dialog_temp

# remove storage
data remove storage dialog_temp title
data remove storage dialog_temp body