# Parameters:
# - initial_login_bonus (int): The initial login bonus amount
# - weekly_login_bonus (int): The weekly login bonus amount
# - daily_login_bonus (int): The daily login bonus amount

$data modify storage dialog_temp actions append value { \
    "label": "Set initial Login Bonus", \
    "tooltip": "Currently: $$(initial_login_bonus)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.set_initial_login_bonus set -1" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Set weekly Login Bonus", \
    "tooltip": "Currently: $$(weekly_login_bonus)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.set_weekly_login_bonus set -1" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Set daily Login Bonus", \
    "tooltip": "Currently: $$(daily_login_bonus)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_economy.set_daily_login_bonus set -1" \
    } \
}