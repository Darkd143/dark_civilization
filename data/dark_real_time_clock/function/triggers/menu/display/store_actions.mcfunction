# Parameters:
# - clock_status (string): "Active" or "Inactive"
# - clock_action_status (string): "Deactivate" or "Activate"
# - display_status (string): "None", "[W, D] hh:mm:ss", "Week: X, Day: Y", or "hh:mm:ss"
# - hour (int): The hour count 0-6
# - day (int): The day count 0-6
# - week (int): The week count 0-6
# - session_afk_limit (int): The session hour limit for players to be set to AFK 1-24
# - break_suggest_time (int): The session time before the player starts getting messages to take a break 1-12 or "Disabled"

$data modify storage dialog_temp actions append value { \
      "label": "Clock: $(clock_status)", \
      "tooltip": "Click to $(clock_action_status)", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.change_active set 1" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Display: $(display_status)", \
      "tooltip": "Click to toggle", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.change_display set 1" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set the hour (Current: $(hour))", \
      "tooltip": "Click to set the hour", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_hour set -2" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set the day (Current: $(day))", \
      "tooltip": "Click to set the day", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_day set -2" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set the week (Current: $(week))", \
      "tooltip": "Click to set the week", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_week set -2" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set session AFK limit (Current: $(session_afk_limit))", \
      "tooltip": "Click to set the session AFK limit", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_session_afk_limit set -1" \
      } \
    }

$data modify storage dialog_temp actions append value { \
      "label": "Set break suggest time (Current: $(break_suggest_time))", \
      "tooltip": "Click to set the break suggest time", \
      "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_real_time_clock.set_break_suggest_time set -1" \
      } \
    }
    