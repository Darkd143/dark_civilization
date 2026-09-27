# Parameters:
# - clock_status (string): "Active" or "Inactive"
# - clock_action_status (string): "Deactivate" or "Activate"
# - display_status (string): "None", "[W, D] hh:mm:ss", "Week: X, Day: Y", or "hh:mm:ss"
# - hour (int): The hour count 0-6
# - day (int): The day count 0-6
# - week (int): The week count 0-6

$data modify storage dialog_temp actions append value { \
      "label": "Clock: $(clock_status)", \
      "tooltip": "Click to $(clock_action_status)", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.change_active set 2" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Display: $(display_status)", \
      "tooltip": "Click to toggle", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.change_display set 2" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set the hour (Current: $(hour))", \
      "tooltip": "Click to set the hour", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_hour set -1" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set the day (Current: $(day))", \
      "tooltip": "Click to set the day", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_day set -1" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set the week (Current: $(week))", \
      "tooltip": "Click to set the week", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_week set -1" \
      } \
    }