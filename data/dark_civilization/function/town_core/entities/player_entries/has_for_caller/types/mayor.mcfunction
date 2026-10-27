# RUN THIS FILE AS THE PLAYER

# Setup storage
function dark_civilization:town_core/entities/player_entries/has_for_caller/setup {roles:4}

# Run Function
function dark_civilization:town_core/entities/player_entries/has_for_caller/macro_min with storage temp

# Determine Result
return run function dark_civilization:town_core/entities/player_entries/has_for_caller/teardown with storage temp