# triggers
function dark_economy:triggers/manage/check

# Display while time is more than 0
execute as @a[tag=dark_economy.displaying_money,tag=dark_civilization.opt_in] run function dark_economy:money/display/main