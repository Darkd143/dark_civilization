execute unless function dark_player:permissions/has_dp_op run function dark_player:permissions/permission_denied

# Display Dialog
execute if function dark_player:permissions/has_dp_op run function dark_player:triggers/op_menu/display/main

# Reset Trigger
function dark_player:triggers/op_menu/enable