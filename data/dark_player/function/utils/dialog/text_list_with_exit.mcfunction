# Parameters:
# - title (string): The title of the dialog box
# - body (list[object]): The list of object messages to be displayed
# - exit_action (object): The exit action

$dialog show @s { \
  "type": "minecraft:notice", \
  "title": "$(title)", \
  "body": $(body), \
  "action": $(exit_action) \
}