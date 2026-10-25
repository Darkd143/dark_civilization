# RUN AS CORE PLAYER ENTRY
execute if data entity @s CustomName run data modify storage temp player_name set from entity @s CustomName
execute unless data storage temp player_name run data modify storage temp player_name set value "the player"