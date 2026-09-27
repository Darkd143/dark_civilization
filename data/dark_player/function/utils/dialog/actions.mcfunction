# Parameters:
# - title (string): The title of the dialog box
# - exit_action (object): The exit action
# - actions (list[object]): The actions of the dialog box

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "exit_action": $(exit_action),\
  "title": "$(title)", \
  "actions": $(actions) \
}