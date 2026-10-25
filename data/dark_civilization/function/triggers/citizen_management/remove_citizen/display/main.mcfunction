scoreboard players set @p[tag=dark_civilization.identified_player] dark_economy.cost 1

# Setup storage
execute if score @s dark_civilization.citizen_role matches 1 run data merge storage dialog_temp {title:"Unban Player Confirmation",color:"yellow"}
execute if score @s dark_civilization.citizen_role matches 2 run data merge storage dialog_temp {title:"Reject Citizen Request Confirmation",color:"yellow"}
execute if score @s dark_civilization.citizen_role matches 3..4 run data merge storage dialog_temp {title:"Remove Citizen Confirmation",color:"yellow"}

function dark_civilization:triggers/citizen_management/remove_citizen/display/storage_helper with storage temp

function dark_civilization:triggers/citizen_management/manage/shared/store_dialog_no

# Display dialog
execute as @p[tag=dark_civilization.identified_player] run function dark_player:utils/dialog/confirmation with storage dialog_temp

# Remove storage
data remove storage dialog_temp title
data remove storage dialog_temp message
data remove storage dialog_temp color
data remove storage dialog_temp yes
data remove storage dialog_temp no