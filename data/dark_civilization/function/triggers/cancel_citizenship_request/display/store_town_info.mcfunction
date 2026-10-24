# Set up storage
function dark_civilization:helper/store_town_name

# Display Dialog
function dark_civilization:triggers/cancel_citizenship_request/display/macro with storage temp

# Remove Storage
data remove storage temp town_name