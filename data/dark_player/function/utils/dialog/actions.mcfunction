# Parameters:
# - title (string): The title of the dialog box
# - actions (object): The actions of the dialog box

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "$(title)", \
  "actions": $(actions) \
}