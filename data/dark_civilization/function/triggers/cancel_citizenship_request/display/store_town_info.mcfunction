# Set up storage
execute as @n[distance=..3,tag=dark_civilization.town_core,type=minecraft:interaction] run function dark_civilization:helper/store_town_name

# Display Dialog
function dark_civilization:triggers/cancel_citizenship_request/display/macro with storage temp

# Remove Storage
data remove storage temp town_name