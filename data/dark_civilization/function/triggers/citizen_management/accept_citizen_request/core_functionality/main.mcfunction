# Player does not have town permissions
execute unless function dark_civilization:helper/permissions/can_manage_citizen_requests run return run function dark_civilization:triggers/citizen_management/manage/permissions/town_permission_denied {action_string:"manage citizen requests"}

# Player request found
execute unless function dark_civilization:triggers/citizen_management/manage/shared/player_entry_found run return run function dark_civilization:triggers/citizen_management/manage/shared/failed_to_find_entry {entry_string:"citizen request"}

# Show Warning Dialog
execute if score @s dark_civilization.accept_citizen_request matches 1.. run function dark_civilization:triggers/citizen_management/accept_citizen_request/display/main