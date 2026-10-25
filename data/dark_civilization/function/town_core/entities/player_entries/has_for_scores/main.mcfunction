# RUN THIS FILE AS THE TOWN CORE
# Parameters:
# - role (int): The role(s) expected
# - player_id (int): The player_id(s) expected

$data modify storage temp role set value $(roles)
$data modify storage temp player_id set value $(player_id)

# Run Function
function dark_civilization:town_core/entities/player_entries/has_for_caller/macro with storage temp

# Remove storage
data remove storage temp role
data remove storage temp player_id