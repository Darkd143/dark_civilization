# Set up storage
data merge storage dialog_temp {title:"Dark Economy - Set Daily Login Bonus","exit_action":{"label":"Back","tooltip":"back to manage login bonus menu","action":{"type": "minecraft:run_command","command": "/trigger dark_economy.manage_login_bonus_menu"}},message:"Change the daily login bonus using the slider and then save.",key:"new_daily_login_bonus",input_label:"change daily login bonus",start:10,end:1000,step:10,columns:1,actions:[{ \
      "label": "Save", \
      "tooltip": "Click to save the daily login bonus", \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "/trigger dark_economy.set_daily_login_bonus set $(new_daily_login_bonus)", \
      } \
    } \
]}

# Using Cost as a temporary variable
execute store result score @s dark_economy.cost run data get storage dark_economy.config login_bonus.daily
execute if score @s dark_economy.cost matches ..9 run scoreboard players set @s dark_economy.cost 10
execute if score @s dark_economy.cost matches 1001.. run scoreboard players set @s dark_economy.cost 1000
execute store result storage dialog_temp initial int 1 run scoreboard players get @s dark_economy.cost
scoreboard players reset @s dark_economy.cost

# Display Dialog
function dark_player:utils/dialog/int_input with storage dialog_temp

# Remove Storage
data remove storage dialog_temp title
data remove storage dialog_temp exit_action
data remove storage dialog_temp message
data remove storage dialog_temp key
data remove storage dialog_temp input_label
data remove storage dialog_temp start
data remove storage dialog_temp end
data remove storage dialog_temp step
data remove storage dialog_temp initial
data remove storage dialog_temp actions
data remove storage dialog_temp columns