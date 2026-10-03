# Permission Denied for non-opt-in players
execute unless function dark_player:permissions/has_dp_op run return run function dark_chunk_manager:triggers/menu/permission_denied

# Reset Trigger
function dark_chunk_manager:triggers/menu/enable

# Display
function dark_chunk_manager:triggers/menu/display/main