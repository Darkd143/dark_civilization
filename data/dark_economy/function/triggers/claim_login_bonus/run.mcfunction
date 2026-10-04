# Permission Denied for non-opt-in players
execute unless function dark_civilization:opt_in/is_opt_in run return run function dark_economy:triggers/claim_login_bonus/permission_denied

execute unless function dark_economy:money/login_bonus/has_login_bonus run return run function dark_economy:triggers/claim_login_bonus/dont_have_login_bonus

# Display Confirmation Dialog
execute if score @s dark_economy.claim_login_bonus matches 1 run function dark_economy:triggers/claim_login_bonus/display/main

# Claim
execute if score @s dark_economy.claim_login_bonus matches 2 run function dark_economy:money/login_bonus/claim

# reset trigger
function dark_economy:triggers/claim_login_bonus/enable