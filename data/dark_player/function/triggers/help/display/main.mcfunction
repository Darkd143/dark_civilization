# set up storage

# Help Menu
data merge storage dialog_temp {"title":"Help Menu - List of triggers",body:[{ \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_player.help","color":"green","click_event":{"action":"run_command","command":"/trigger dark_player.help"}},{"text":" - display this menu"}] \
    }]}

# Operator Menu
execute if entity @s[tag=dark_player.dp_op] run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_player.op_menu","color":"green","click_event":{"action":"run_command","command":"/trigger dark_player.op_menu"}},{"text":" - display the operator menu"}] \
    }

# Opt In / Opt Out
execute unless function dark_civilization:opt_in/is_opt_in run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_civilization.toggle_opt_in","color":"green","click_event":{"action":"run_command","command":"/trigger dark_civilization.toggle_opt_in"}},{"text":" - opt in to the Dark Civilization features"}] \
    }
execute if function dark_civilization:opt_in/is_opt_in run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_civilization.toggle_opt_in","color":"green","click_event":{"action":"run_command","command":"/trigger dark_civilization.toggle_opt_in"}},{"text":" - opt out of the Dark Civilization features"}] \
    }

# Display Money
execute if function dark_civilization:opt_in/is_opt_in run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": [{"text":"● ","color":"white"},{"text":"dark_player.player_menu","color":"green","click_event":{"action":"run_command","command":"/trigger dark_economy.player_menu"}},{"text":" - open the player menu"}] \
    }

# display dialog
function dark_player:utils/dialog/text_list with storage dialog_temp

# remove storage
data remove storage dialog_temp title
data remove storage dialog_temp body