# Parameters:
# - town_name (string): The name of the town
# - town_core_id (int): The town core id

# Setup storage
$data merge storage dialog_temp {title:"$(town_name) Town Core Menu",exit_action:{ \
    "label": "Exit", \
    "tooltip": "exit this menu" \
  },columns:1,actions:[{ \
    "label": "View Citizens", \
    "tooltip": "view the list of $(town_name) citizens", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.view_town_citizens set 1" \
    } \
}]}

# Citizen Request Menu TODO
execute if function dark_civilization:helper/permissions/can_manage_citizen_requests run data modify storage dialog_temp actions append value { \
    "label": "Manage Citizenship Requests", \
    "tooltip": "manage $(town_name) citizenship requests", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.view_town_citizens set 2" \
    } \
}

# Manage Players TODO
execute if function dark_civilization:helper/permissions/can_view_manage_players_list run data modify storage dialog_temp actions append value { \
    "label": "Manage Citizens", \
    "tooltip": "manage $(town_name) citizens", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.view_town_citizens set 3" \
    } \
}

# Display dialog
execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/actions with storage dialog_temp

# Remove storage
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns
data remove storage dialog_temp actions