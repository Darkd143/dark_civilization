# Setup Storage
execute store result storage temp money int 1 run scoreboard players get @s dark_economy.login_bonus
function dark_economy:money/login_bonus/message/store_login_bonus_type

# Give money
function dark_economy:money/add_money with storage temp

# Money Message
function dark_player:utils/tellraw/dp_obj_msg {dp_name:"Dark Economy",message:"{text:'Received ',color:'white'},{storage:'temp',nbt:'type_string',color:'white'},{'text':' login bonus of $',color:'white'},{storage:'temp',nbt:'money',color:'white'},{'text':'.',color:'white'}"}

# Reset Login Bonus Scores
function dark_economy:money/login_bonus/remove

# Remove Storage
data remove storage temp money
data remove storage temp type_string