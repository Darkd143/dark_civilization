# Set up storage
function dark_civilization:helper/store_town_name
execute store result storage temp town_core_id int 1 run scoreboard players get @s dark_civilization.town_core_id

# Display Dialog
function dark_civilization:triggers/cancel_citizenship_request/display/macro with storage temp

# Remove Storage
data remove storage temp town_name
data remove storage temp town_core_id