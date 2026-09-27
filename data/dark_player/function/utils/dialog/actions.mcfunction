# Parameters:
# - title (string): The title of the dialog box
# - exit_action (object): The exit action
# - columns (int): The number of columns
# - actions (list[object]): The actions of the dialog box

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "$(title)", \
  "exit_action": $(exit_action),\
  "columns": $(columns), \
  "actions": $(actions) \
}