# Parameters:
# - index (int): The index of the feature

$execute unless data storage temp features[$(index)] run return 1
$data modify storage temp feature_name set from storage temp features[$(index)]

function dark_civilization:triggers/create_town_core/display/add_feature/macro with storage temp

scoreboard players add @s dark_civilization.temp 1
execute store result storage temp index int 1 run scoreboard players get @s dark_civilization.temp

# Loop
function dark_civilization:triggers/create_town_core/display/add_feature/main with storage temp