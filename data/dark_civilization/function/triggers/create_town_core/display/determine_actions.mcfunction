# Parameters:
# - cost (int): The cost of the purchase
# - town_core_display_item (string): The name of the display item
# - build_requirements (string): The build requirements string
# - town_core_construction_distance (int): The minimum xz distance to other Town Cores

scoreboard players set @s dark_civilization.temp 0

# Cost
$scoreboard players set @s dark_economy.cost $(cost)
execute unless function dark_economy:money/has_money run scoreboard players remove @s dark_civilization.temp 1

$execute if function dark_economy:money/has_money run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Cost: $$(cost)", \
        "color": "green" \
      } \
    }

$execute unless function dark_economy:money/has_money run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Cost: $$(cost)", \
        "color": "red" \
      } \
    }

scoreboard players reset @s dark_economy.cost

# Holding Writable Book with a name for the town
execute unless function dark_civilization:town_core/town_name/conditions_met run scoreboard players remove @s dark_civilization.temp 1

$execute if function dark_civilization:town_core/town_name/conditions_met run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Name: Holding a $(town_core_display_item) with the desired town name written on the first page.", \
        "color": "green" \
      } \
    }

$execute unless function dark_civilization:town_core/town_name/conditions_met run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Name: Holding a $(town_core_display_item) with the desired town name written on the first page.", \
        "color": "red" \
      } \
    }

# Building Requirements
$data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Construction: $(build_requirements)", \
        "color": "yellow" \
      } \
    }

# Not Placed within x blocks of another Town Core
execute if function dark_civilization:town_core/helper/town_core_too_close/main run scoreboard players set @s dark_economy.cost -1
execute if score @s dark_economy.cost matches -1 run scoreboard players remove @s dark_civilization.temp 1

$execute if score @s dark_economy.cost matches -1 run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Distance: Cannot be placed within $(town_core_construction_distance) xz blocks from another Town Core.", \
        "color": "red" \
      } \
    }

$execute unless score @s dark_economy.cost matches -1 run data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "● Distance: Cannot be placed within $(town_core_construction_distance) xz blocks from another Town Core.", \
        "color": "green" \
      } \
    }

scoreboard players reset @s dark_economy.cost

# Yes Button
execute if score @s dark_civilization.temp matches ..-1 run data merge storage dialog_temp {yes:{ \
    "label": { \
      "text": "Create", \
      "color": "red" \
    }, \
    "tooltip": { \
      "text": "meet the requirements then click to create a town core", \
      "color": "red" \
    }, \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.create_town_core set 2" \
    } \
  }}

execute unless score @s dark_civilization.temp matches ..-1 run data merge storage dialog_temp {yes:{ \
    "label": "Create", \
    "tooltip": "create a town core", \
    "action": { \
      "type": "minecraft:run_command", \
      "command": "/trigger dark_civilization.create_town_core set 2" \
    } \
  }}

scoreboard players reset @s dark_civilization.temp