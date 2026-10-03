# triggers
function dark_economy:triggers/manage/check

# Display Money
execute as @a[tag=dark_economy.displaying_money,tag=dark_civilization.opt_in] unless function dark_real_time_clock:clock/display/is_displaying_to_user run function dark_economy:money/display/main