# Parameters:
# - active_status (string): "Active" or "Inactive"
# - type_string (string): "Initial", "Weekly", or "Daily"

$data modify storage dialog_temp actions append value { \
    "label": "Display Money", \
    "tooltip": "Currently $(active_status)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.display_money" \
    } \
}

$execute if function dark_economy:money/login_bonus/has_login_bonus run data modify storage dialog_temp actions append value { \
    "label": "Claim Login Bonus", \
    "tooltip": "Claim Your $(type_string) Login Bonus", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.claim_login_bonus" \
    } \
}