# Parameters:
# - title (string): The title of the dialog box
# - message (string): The message of the dialog box
# - yes (object): The yes action of the dialog box
# - no (object): The no action of the dialog box

$dialog show @s { \
  "type": "minecraft:confirmation", \
  "title": "$(title)", \
  "body": { \
    "type": "minecraft:plain_message", \
    "contents": "$(message)" \
  }, \
  "yes": $(yes), \
  "no": $(no) \
}