# Parameters:
# - town_core_display_item (string): The item to be displayed

$summon minecraft:item_display ~ ~0.5 ~ {Tags:["dark_civilization.town_core_display","dark_civilization.new_town_core_display"],item:{id:"$(town_core_display_item)",count:1},item_display:"fixed",billboard:"center",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,0.75f],right_rotation:[0f,0f,0f,1f]}}
execute as @n[distance=..3,tag=dark_civilization.new_town_core_display,type=minecraft:item_display] run function dark_civilization:town_core/entities/item_display/initialize