# Set up storage
data merge storage dialog_temp {title:"Dark Real Time Clock - Operator Config",actions:[],"exit_action":{"label":"Back","tooltip":"Back to Operator Menu","action":{"type": "minecraft:run_command","command": "/trigger dark_player.op_menu"}},columns:1}

execute if function dark_real_time_clock:clock/helper/clock_is_active run data merge storage temp {clock_status:"Active",clock_action_status:"Deactivate"}
execute unless function dark_real_time_clock:clock/helper/clock_is_active run data merge storage temp {clock_status:"Inactive",clock_action_status:"Activate"}

execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 0 run data merge storage temp {display_status:"None"}
execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 1 run data merge storage temp {display_status:"[W, D] hh:mm:ss"}
execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 2 run data merge storage temp {display_status:"Week: X, Day: Y"}
execute if score $dark_real_time_clock.config dark_real_time_clock.display matches 3 run data merge storage temp {display_status:"hh:mm:ss"}

execute store result storage temp hour int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.hours
execute store result storage temp day int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.days
execute store result storage temp week int 1 run scoreboard players get $dark_real_time_clock.clock dark_real_time_clock.weeks
execute store result storage temp session_afk_limit int 1 run scoreboard players get $dark_real_time_clock.session dark_real_time_clock.hours

function dark_real_time_clock:triggers/menu/display/store_actions with storage temp

data remove storage temp clock_status
data remove storage temp clock_action_status
data remove storage temp display_status
data remove storage temp hour
data remove storage temp day
data remove storage temp week
data remove storage temp session_afk_limit

# Display Dialog
function dark_player:utils/dialog/actions with storage dialog_temp

# Remove Storage
data remove storage dialog_temp actions
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp columns