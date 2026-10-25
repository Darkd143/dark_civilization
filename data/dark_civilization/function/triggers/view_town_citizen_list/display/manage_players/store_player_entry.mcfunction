# Permissions:
# - username (string): The username of the player
# - player_id (string): The id of the player

$data modify storage dialog_temp actions append value { \
    "label": [{player:"$(username)"},{text:" $(username)",color:"white"}] \
}

#  Mayor
data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Mayor", \
      "color": "white" \
    }, \
    "tooltip": "make $(username) the new mayor", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.assign_new_mayor set $(player_id)" \
    } \
}

# Deputy Mayor
execute if score @s dark_civilization.citizen_role matches 4 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Deputy Mayor", \
      "color": "green" \
    }, \
    "tooltip": "$(username) is a deputy mayor" \
}

execute unless score @s dark_civilization.citizen_role matches 4 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Deputy Mayor", \
      "color": "white" \
    }, \
    "tooltip": "apply deputy mayor role to $(username)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.apply_deputy_mayor_role set $(player_id)" \
    } \
}

# Citizen
execute if score @s dark_civilization.citizen_role matches 3 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Citizen", \
      "color": "green" \
    }, \
    "tooltip": "$(username) is a citizen" \
}

execute unless score @s dark_civilization.citizen_role matches 3 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Citizen", \
      "color": "white" \
    }, \
    "tooltip": "apply citizen role to $(username)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.apply_citizen_role set $(player_id)" \
    } \
}

# Banned
execute if score @s dark_civilization.citizen_role matches 1 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Banned", \
      "color": "red" \
    }, \
    "tooltip": "$(username) is banned" \
}

execute unless score @s dark_civilization.citizen_role matches 1 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Banned", \
      "color": "white" \
    }, \
    "tooltip": "ban $(username)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.ban_citizen set $(player_id)" \
    } \
}

# Remove
execute if score @s dark_civilization.citizen_role matches 1 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Remove", \
      "color": "white" \
    }, \
    "tooltip": "remove $(username) from the banned list", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.remove_citizen set $(player_id)" \
    } \
}

execute unless score @s dark_civilization.citizen_role matches 1 run data modify storage dialog_temp actions append value { \
    "label": { \
      "text": "Remove", \
      "color": "white" \
    }, \
    "tooltip": "revoke citizenship for $(username)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_civilization.remove_citizen set $(player_id)" \
    } \
}