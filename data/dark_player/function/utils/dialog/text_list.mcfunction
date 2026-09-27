# Parameters:
# - title (string): The title of the dialog box
# - body (list[object]): The list of object messages to be displayed

$dialog show @s { \
  "type": "minecraft:notice", \
  "title": "$(title)", \
  "body": $(body), \
  "action": { \
    "label": "Exit", \
    "tooltip": "exit this notice" \
  } \
}