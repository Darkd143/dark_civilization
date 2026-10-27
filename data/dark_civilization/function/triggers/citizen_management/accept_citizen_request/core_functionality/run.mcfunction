# Setup storage
function dark_civilization:triggers/citizen_management/manage/shared/store_entry_data

# Show Warning Dialog
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.accept_citizen_request matches 1.. run function dark_civilization:triggers/citizen_management/accept_citizen_request/display/main
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.accept_citizen_request matches ..-1 run function dark_civilization:town_core/entities/player_entries/assign {role:3}

# Cleanup
data remove storage temp player_name
data remove storage temp player_id