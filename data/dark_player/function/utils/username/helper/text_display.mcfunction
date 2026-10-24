# Parameters:
# - storage (string): The storage to save the username to
# - identifier (string): The identifier of the storage to save the username to

summon text_display ~ ~ ~ {Tags:["dark_player.name_resolver"],text:{'selector':'@p[tag=dark_player.identifier]'}}
$data modify storage $(storage) $(identifier) set from entity @n[type=text_display,tag=dark_player.name_resolver] text.text
kill @n[type=text_display,tag=dark_player.name_resolver]