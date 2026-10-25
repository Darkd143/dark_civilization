# Setup storage
function dark_civilization:triggers/citizen_management/manage/shared/store_entry_data

# Show Warning Dialog
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.assign_new_mayor matches 1.. run function dark_civilization:triggers/citizen_management/assign_new_mayor/display/main
execute if score @p[tag=dark_civilization.identified_player] dark_civilization.assign_new_mayor matches ..-1 run function dark_civilization:triggers/citizen_management/assign_new_mayor/core_functionality/apply with storage temp

# Cleanup
data remove storage temp player_name
data remove storage temp player_id