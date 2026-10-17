# Parameters:
# - title (string): The title of the dialog box
# - body (list[object]): The list of object messages to be displayed
# - yes (object): The yes action of the dialog box
# - no (object): The no action of the dialog box

$dialog show @s { \
  "type": "minecraft:confirmation", \
  "title": "$(title)", \
  "body": $(body), \
  "yes": $(yes), \
  "no": $(no), \
}