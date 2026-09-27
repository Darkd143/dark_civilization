# Parameters:
# - title (string): The title of the dialog box
# - message (string): The message of the dialog box
# - exit_action (object): The exit action
# - yes (object): The yes action of the dialog box
# - no (object): The no action of the dialog box

$dialog show @s { \
  "type": "minecraft:confirmation", \
  "title": "$(title)", \
  "body": { \
    "type": "minecraft:plain_message", \
    "contents": "$(message)" \
  }, \
  "exit_action": $(exit_action),\
  "yes": $(yes), \
  "no": $(no) \
}