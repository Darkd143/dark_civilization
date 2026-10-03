# triggers
function dark_economy:triggers/manage/check

# Display while time is more than 0
execute as @a[scores={dark_economy.display_time=1..}] run function dark_economy:money/display/main