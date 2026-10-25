# Setup storage
data merge storage dialog_temp {title:"Assign New Mayor Confirmation",color:"yellow"}

function dark_civilization:triggers/citizen_management/assign_new_mayor/display/storage_helper with storage temp

function dark_civilization:triggers/citizen_management/manage/shared/store_dialog_no

# Display dialog
execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/confirmation with storage dialog_temp

# Remove storage
data remove storage dialog_temp title
data remove storage dialog_temp message
data remove storage dialog_temp color
data remove storage dialog_temp yes
data remove storage dialog_temp no