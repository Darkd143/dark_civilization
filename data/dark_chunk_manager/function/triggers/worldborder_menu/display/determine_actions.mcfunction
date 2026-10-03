# Parameters:
# - total_worldborder_stages (int): The total worldborder stages
# - current_worldborder_stage (int): The current worldborder stage
# - initial_radius (int): The initial radius
# - max_radius (int): The max radius

$data modify storage dialog_temp actions append value { \
    "label": "Set Total Worldborder Stage", \
    "tooltip": "Currently: $(total_worldborder_stages)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_chunk_manager.set_total_worldborder_stages set -1" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Set Current Worldborder Stage", \
    "tooltip": "Currently: $(current_worldborder_stage)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_chunk_manager.set_current_worldborder_stage set -1" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Set Initial Worldborder Radius", \
    "tooltip": "Currently: $(initial_radius)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_chunk_manager.set_initial_radius set -1" \
    } \
}

$data modify storage dialog_temp actions append value { \
    "label": "Set Max Worldborder Radius", \
    "tooltip": "Currently: $(max_radius)", \
    "action": { \
        "type": "minecraft:run_command", \
        "command": "/trigger dark_chunk_manager.set_max_radius set -1" \
    } \
}