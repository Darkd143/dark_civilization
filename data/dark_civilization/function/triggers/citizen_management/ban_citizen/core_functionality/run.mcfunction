# Setup storage
function dark_civilization:triggers/citizen_management/manage/shared/store_entry_data

# Show Warning Dialog
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.ban_citizen matches 1.. run function dark_civilization:triggers/citizen_management/ban_citizen/display/main
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.ban_citizen matches ..-1 run function dark_civilization:triggers/citizen_management/ban_citizen/core_functionality/apply with storage temp

# Cleanup
data remove storage temp player_name
data remove storage temp player_id