# Parameters:
# - active_status (string): "Active" or "Inactive"

$data modify storage dialog_temp actions append value { \
    "label": "Display Money", \
    "tooltip": "Currently $(active_status)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.display_money" \
    } \
}