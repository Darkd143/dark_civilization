# Setup storage
execute store result storage temp player_id int 1 run scoreboard players get @p[tag=dark_civilization.identified_player] dark_player.player_id
data modify storage temp citizen_role set value 2
execute if function dark_civilization:town_core/settings/auto_accept_citizenship_requests run data modify storage temp citizen_role set value 3

function dark_civilization:town_core/entities/player_entries/new_armor_stand with storage temp

# Cleanup storage
data remove storage temp player_id
data remove storage temp citizen_role

# Completion Message
function dark_civilization:helper/store_town_name

execute if function dark_civilization:town_core/settings/auto_accept_citizenship_requests run function dark_civilization:town_core/manage/request_citizenship/messages/citizenship_granted with storage temp
execute unless function dark_civilization:town_core/settings/auto_accept_citizenship_requests run function dark_civilization:town_core/manage/request_citizenship/messages/request_sent with storage temp

data remove storage temp town_name