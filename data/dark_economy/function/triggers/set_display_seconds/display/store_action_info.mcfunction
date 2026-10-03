# Parameters:
# - display_seconds (int): The amount of seconds to display money
# - default_display_seconds (int): The amount of seconds to display money by default

$execute if score @s dark_economy.display_seconds matches 0 run data modify storage dialog_temp input_label set value "Currently: Default ($(default_display_seconds) seconds)"
execute if score @s dark_economy.display_seconds matches -1 run data modify storage dialog_temp input_label set value "Currently: Infinite"
$execute if score @s dark_economy.display_seconds matches 1.. run data modify storage dialog_temp input_label set value "Currently: $(display_seconds) seconds"

$data modify storage dialog_temp actions append value { \
      "label": "Set to Default: ($(default_display_seconds) seconds)", \
      "tooltip": "Click to set display seconds to default", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.set_display_seconds set -2" \
      } \
    }