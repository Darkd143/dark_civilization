# Permission Denied
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_civilization:triggers/manage/permissions/permission_denied {trigger_name:"cancel_citizenship_request"}

# Does not already have a request out
execute unless function dark_civilization:helper/has_requested_citizenship run return run function dark_civilization:triggers/cancel_citizenship_request/not_already_requested_citizenship

# Show Dialog
execute unless score @s dark_civilization.cancel_citizenship_request matches 2 run function dark_civilization:triggers/cancel_citizenship_request/display/main

# Cancel request
execute if score @s dark_civilization.cancel_citizenship_request matches 2 run function dark_civilization:town_core/manage/cancel_citizenship_request/main

# Reset Score
function dark_civilization:triggers/cancel_citizenship_request/enable