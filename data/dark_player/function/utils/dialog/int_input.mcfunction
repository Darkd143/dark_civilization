# Parameters:
# - title (string): The title of the dialog box
# - exit_action (object): The exit action
# - message (string|object): The message of the dialog box
# - key (string): The key string for the action template
# - input_label (string): The input label
# - start (int): The minimum value for the int input
# - end (int): The maximum value for the int input
# - step (int): The step value for the int input
# - initial (int): The initial value for the int input
# - columns (int): The number of columns
# - actions (list[object]): The actions of the dialog box

$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": "$(title)", \
  "exit_action": $(exit_action),\
  "body": { \
    "type": "minecraft:plain_message", \
    "contents": "$(message)" \
  }, \
  "inputs": [ \
    { \
      "type": "minecraft:number_range", \
      "key": "$(key)", \
      "label": "$(input_label)", \
      "start": $(start), \
      "end": $(end), \
      "step": $(step), \
      "initial": $(initial) \
    } \
  ], \
  "columns": $(columns), \
  "actions": $(actions) \
}