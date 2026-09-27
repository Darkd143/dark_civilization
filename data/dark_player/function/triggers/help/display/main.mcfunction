# set up storage
data merge storage dialog_temp {"title":"Help Menu - List of triggers",body:[{ \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_player.help","color":"green","click_event":{"action":"run_command","command":"/trigger dark_player.help"}},{"text":" - display this menu"}] \
    }]}

execute if entity @s[tag=dark_player.dp_op] run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_player.op_menu","color":"green","click_event":{"action":"run_command","command":"/trigger dark_player.help"}},{"text":" - display the operator menu"}] \
    }

# display dialog
function dark_player:utils/dialog/text_list with storage dialog_temp

# remove storage
data remove storage dialog_temp title
data remove storage dialog_temp body